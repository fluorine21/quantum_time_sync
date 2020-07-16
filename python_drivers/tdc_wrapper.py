# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 15:59:25 2020

@author: tianlab01
"""
import time
import socket
import QuTAG
# import thread module 
from _thread import *
import threading 
import james_utils
import random

#Use secore mode?
SECURE_MODE = 0

#Socket timeout in seconds
SERVER_TIMEOUT = 15
SERVER_ACK = b'\x66'

BYTES_PER_TIMESTAMP = 20

#Mode for this instance
MODE_NORMAL = 0
MODE_CLIENT = 1
MODE_SERVER = 2

#Commands the server will process
COMMAND_PING = 0
COMMAND_GET_AND_CLEAR = 1 #Gets the latest timestamp for this channel and clears it from the list
COMMAND_SHUTDOWN = 2
COMMAND_CLOSE_CONNECTION = 3

#channel number for the 1ms pulse
DUMMY_CHANNEL_NUM = 104

#Socket error codes
SOCKET_TIMEOUT = -1
SOCKET_DEAD = -2

#Record object for getting pulses out of the TDC
class pulse_record:
    
    channel_num = 0
    timestamp = 0
    
    def __init__(self, cn, ts):
        
        self.channel_num = cn
        self.timestamp = ts

class tdc_wrapper:
    
    
    timeout = 5 #in seconds
    device = 0
    dummy_mode = 0#If true, timestamp returned will be unix time * 1e7
    mode = 0
    server_ip = ""
    timestamp_list = [] # list of timestamps recorded by this instance in server mode
    
    shutdown_flag = 0
    record_offset = 0
    
    #used to effectively "reset" internal TDC counter
    offset_timestamp = 0
    
    #List of currently running threads
    threads = []
    
    def __init__(self, tt, dm, m = MODE_NORMAL, s_ip = ""):
        
        self.timeout = tt
        self.dummy_mode = dm
        self.mode = m
        self.server_ip = s_ip
        self.record_offset = 1#Record the offset first
        
        if(self.mode == MODE_SERVER):
            self.server_init()
        
        return
    
    
    
    ############################################################################
    #############The following functions may only be used in normal mode
    
    #Returns the timestamp of the first pulse seen on channel_num
    #Returns 0 on timeout
    def wait_pulse(self, channel_num):
        
                
        if(self.dummy_mode):
            return int(time.time() * 10000000)
        
        if(self.mode != MODE_NORMAL):
            #If we're the client
            if(self.mode == MODE_CLIENT):
                return self.wait_pulse_client(channel_num)
            else:
                print("Error, cannot call wait_pulse in server mode!")
                return -1

        
        if(self.device):
            print("Error, cannot call wait_pulse while recording, exiting")
            return -1
        
        #Open the TDC and start receiveing pulses
        self.device = QuTAG.QuTAG()
        
        time_now = time.time()
        
        ret_val = 0
        
        #While we're not out of time
        while((time.time() - time_now) > self.timeout):
            
            #Check the data loss
            d_loss = self.device.getDataLost()
            if(d_loss != 0):
                print("Warning, data loss was " + str(d_loss) + ", some timestamps have been missed")
            
            #Readback timestamps from the device
            t_s = self.device.getLastTimestamps(True)
            
            #If we didnt get any timestamps
            if(t_s[2] == 0):
                continue#keep going
            
            for i in range(0, t_s[2]):
                #If we find a timestamp of this channel
                if(t_s[1][i] == channel_num):
                    ret_val = t_s[0][i]
                    break
                    
            
        #Close the TDC
        self.device.deInitialize()    
        
        self.device = 0
        
        return ret_val
    
    def start_record(self):
        
        if(self.mode != MODE_NORMAL):
            print("Error, start_record must be called in NORMAL mode")
            return -1
        
        if(self.dummy_mode):
            return 0
        
        if(self.device):
            print("Error, cannot call this function while TDC is active!")
            return -1
        
        #Open the TDC and start receiveing pulses
        self.device = QuTAG.QuTAG()
        
        return 0
    
    #Returns timestamp from that channel\
    #0 if not found
    #-1 if nothing found
    def end_record(self, channel_num):
        
        if(self.dummy_mode):
            return int(time.time() * 10000000)
        
        if(self.mode != MODE_NORMAL):
            if(self.mode == MODE_CLIENT):
               return self.end_record_client(channnel_num)
            else:
                print("Error, end_record must be called in NORMAL mode")
                return -1
    
        ret_val = 0
        
        #Check the data loss
        d_loss = self.device.getDataLost()
        if(d_loss != 0):
            print("Warning, data loss was " + str(d_loss) + ", some timestamps have been missed")
        
        #Readback timestamps from the device
        t_s = self.device.getLastTimestamps(True)
        
        #If we didnt get any timestamps
        if(t_s[2] == 0):
            print("No timestamp recieved after record!")
            ret_val -1
        else:
            for i in range(0, t_s[2]):
                #If we find a timestamp of this channel
                if(t_s[1][i] == channel_num):
                    ret_val = t_s[0][i]
                    
        #Close the TDC
        self.device.deInitialize()    
        
        self.device = 0
        return ret_val
        
    ################################################################################
    
    
    def wait_pulse_client(self, channel_num):
        
        #get a random port going and connect
        random.seed()
        sck = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0) 
        sck.connect((self.server_ip, random.randrange(1000, 2000)))
        
        time_now = time.time()
        ret_val = 0
        while(time.time() - time_now > self.timeout):
            #Keep trying to get that timestamp
            channel_byte = channel_num & 0xff
            #Send the GET_AND_CLEAR command
            sck.send(bytearray([COMMAND_GET_AND_CLEAR, channel_byte]))
            
            ret_val = james_utils.receive_timestamp(sck)
            if(ret_val):
                break
        #gracefully close the connection
        sck.send(bytearray([COMMAND_CLOSE_CONNECTION]))
        sck.close()
        return ret_val
        
    
    
    def end_record_client(self, channel_num):
        
        #get a random port going and connect
        random.seed()
        sck = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0) 
        sck.connect((self.server_ip, random.randrange(1000, 2000)))
        
        channel_byte = channel_num & 0xff
        #Send the GET_AND_CLEAR command
        sck.send(bytearray([COMMAND_GET_AND_CLEAR, channel_byte]))
        
        ret_val = james_utils.receive_timestamp(sck)
        
        #gracefully close the connection
        sck.send(bytearray([COMMAND_CLOSE_CONNECTION]))
        sck.close()
        return ret_val
        
    
    def server_init(self):
        
        print("Initializing TDC in SERVER mode")
        
        #Start a new thread for the TDC service routine
        start_new_thread(self.service_tdc) 
        
        sck = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0) 
        
        #Bind the socket and listen for a connection
        host = socket.gethostname() # Get local machine name
        sck.bind((host, self.port))
        sck.listen(5)
        
        #Start listening for and dispatching client connections
        while(not self.shutdown_flag):
            
            #Check for dead threads
            for t in self.threads:
                if(not t.is_alive()):
                    print("Dropping dead thread #" + str(t.ident))
                    self.threads.remove(t)
            
            try:
                 #Once a client connects we'll be here
                c, addr = sck.accept()     # Establish connection with client.
                print("Got a connection from " + addr[0] + ":" + addr[1])
                
                #if(SECURE_MODE):
                   #c_s = ssl.wrap_socket(c,
                   #             server_side=True,
                   #             certfile=pem_path,
                   #             keyfile=key_path,
                   #             ssl_version=ssl.PROTOCOL_TLS)
                #else:
                c_s = c
                
                c_s.settimeout(SERVER_TIMEOUT)
                
                #Start a new thread to handle the client
                #Also append the thread handle to our list of threads
                self.threads.append(start_new_thread(self.handle_client, (c_s,addr[0] + ":" + addr[1],))) 
                
            except socket.timeout:
                print("Waiting for client connection...")
            except:
                print("Unknown error while waiting for client connection")
                raise
        
        
        print("Waiting for threads to terminate before shutting down server")
        
        while(len(self.threads) > 0):
            with self.threads[0] as t:
                t.join(0.1)
                #If the thread has shut down
                if(not t.is_alive()):
                    print("Stopped thread #" + str(t.ident))
                    self.threads.remove(t)
        
        print("Shutting down server")
        sck.close()
        return
        
    #This function  is called in its own thread to constantly offload data from the tdc
    def service_tdc(self):
        
        print("service_tdc thread has started")
        
        #Start the TDC
        self.device = QuTAG.QuTAG()
        
        while(not self.shutdown_flag):
        
        
            #Check the data loss
            d_loss = self.device.getDataLost()
            if(d_loss != 0):
                print("Warning, data loss was " + str(d_loss) + ", some timestamps have been missed")
            
            #Readback timestamps from the device
            t_s = self.device.getLastTimestamps(True)
            
            #If we didnt get any timestamps
            if(t_s[2] == 0):
                continue#keep going
            
            for i in range(0, t_s[2]):
                
                #If we need to record an offset timestamp
                if(self.record_offset and t_s[1][i] == DUMMY_CHANNEL_NUM):
                    self.record_offet = 0
                    self.offset_timestamp = t_s[0][i]
                
                #If we find a timestamp that isn't the dummy channel
                elif(t_s[1][i] != DUMMY_CHANNEL_NUM):
                    self.timestamp_list.append(pulse_record(t_s[1][i], t_s[0][i] - self.offset_timestamp))
             
        #If we're here then the server shutdown command has been sent
        self.device.deInitialize()    
        self.device = 0
        
        return
        
        
        
        
    
    #This function handles a client connected at socket C   
    def handle_client(self, c, ip_str):
        
        while(not self.shutdown_flag):
            #Receive one command byte from the client
            client_cmd = james_utils.receive_bytes(c, 1)
            
            if(client_cmd == SOCKET_TIMEOUT):
                print("Timed out waiting for client command from " + ip_str)
            elif(client_cmd == SOCKET_DEAD):
                print("Dead socket, dropping client at " + ip_str)
                break
            elif(client_cmd == COMMAND_PING):
                print("Client at " + ip_str + ": COMMAND_PING")
                c.send(SERVER_ACK)
            elif(client_cmd == COMMAND_CLOSE_CONNECTION):
                print("Client at " + ip_str + ": COMMAND_CLOSE_CONNECTION")
                break
            elif(client_cmd == COMMAND_GET_AND_CLEAR):
                print("Client at " + ip_str + ": COMMAND_GET_AND_CLEAR")
                res = self.receive_bytes(c, 1)
                if(res.is_integer()):
                    print("Unable to get channel from client at " + ip_str + ", dropping client")
                    break
                else:
                    channel_num = res[0]
                    ts = 0
                    for t in self.timestamp_list:
                        if(t.channel_num == channel_num):
                            ts = t.timestamp
                            self.timestamp_list.remove(t)
                    james_utils.send_timestamp(c, ts)
                    print("Timestamp sent to client for channel " + str(channel_num) + " was " + str(ts))
                
                
        c.close()
        return

        

                
        
        
    
        
    