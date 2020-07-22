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


#Use secore mode?
SECURE_MODE = 0

#Socket timeout in seconds
SERVER_TIMEOUT = 2
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
COMMAND_CLEAR_ALL = 4

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
    
    port = 25567
    
    def __init__(self, tt, dm, m = MODE_NORMAL, s_ip = ""):
        
        self.timeout = tt
        self.dummy_mode = dm
        self.mode = m
        self.server_ip = s_ip
        self.record_offset = 1#Record the offset first
        
        
        if((not self.dummy_mode) and (self.mode == MODE_NORMAL or self.mode == MODE_SERVER)):
            if(self.check_tdc_clock()):
                print("External TDC clock detected!")
            else:
                print("Warning, TDC did not detect an external clock, results will not be accurate!")
        
        if(self.mode == MODE_SERVER):
            print("Starting TDC wrapper in SERVER mode")
            self.server_init()
        
        return
    
    
    
    ############################################################################
    #############The following functions may only be called by a client or in normal mode
    
    #Returns 1 if locked
    def check_tdc_clock(self):
        
        self.device = QuTAG.QuTAG()
        
        ret_val = self.device.getClockState()
        
        self.device.deInitialize()    
        
        self.device = 0
        
        return ret_val
        
        
    
    def init_device(self):
        
        #Open the TDC and start receiveing pulses
        self.device = QuTAG.QuTAG()
        self.device.enableChannels((1,2,3,4))
        self.device.setSignalConditioning(1, 3, 1, 0.00)
        self.device.setSignalConditioning(2, 3, 1, 0.00)
        self.device.setSignalConditioning(3, 3, 1, 0.00)
        self.device.setSignalConditioning(4, 3, 1, 0.00)
        
        return
        
        
    
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
        self.init_device()
        
        time_now = time.time()
        
        ret_val = 0
        
        #While we're not out of time
        while((time.time() - time_now) < self.timeout):
            
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
            return 0
        
        if(self.dummy_mode):
            return 0
        
        if(self.device):
            print("Error, cannot call this function while TDC is active!")
            return -1
        
        #Open the TDC and start receiveing pulses
        self.init_device()
        
        return 0
    
    #Returns timestamp from that channel\
    #0 if not found
    #-1 if nothing found
    def end_record(self, channel_num):
        
        if(self.dummy_mode):
            return int(time.time() * 10000000)
        
        if(self.mode != MODE_NORMAL):
            if(self.mode == MODE_CLIENT):
               return self.end_record_client(channel_num)
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
        

        sck = socket.socket()
        sck.settimeout(SERVER_TIMEOUT)
        sck.connect((self.server_ip, self.port))
        time.sleep(0.1)
        
        time_now = time.time()
        ret_val = 0
        while(time.time() - time_now < self.timeout):
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
        
        sck = socket.socket()
        sck.settimeout(SERVER_TIMEOUT)
        sck.connect((self.server_ip, self.port))
        time.sleep(0.1)
        
        channel_byte = channel_num & 0xff
        #Send the GET_AND_CLEAR command
        sck.send(bytearray([COMMAND_GET_AND_CLEAR, channel_byte]))
        
        ret_val = james_utils.receive_timestamp(sck)
        
        #gracefully close the connection
        sck.send(bytearray([COMMAND_CLOSE_CONNECTION]))
        sck.close()
        return ret_val
    
    def clear_all(self):
        
        sck = socket.socket()
        sck.settimeout(SERVER_TIMEOUT)
        sck.connect((self.server_ip, self.port))
        time.sleep(0.1)
        
        #Send the GET_AND_CLEAR command
        sck.send(bytearray([COMMAND_CLEAR_ALL]))

        #gracefully close the connection
        sck.send(bytearray([COMMAND_CLOSE_CONNECTION]))
        sck.close()
        return 0
        
    
    def server_init(self):
        
        print("Initializing TDC in SERVER mode")
        
        #Start a new thread for the TDC service routine
        t = threading.Thread(target=self.service_tdc, args=(1,))
        t.start()
        self.threads.append(t)
        
        #Start the user shutdown handlong thread
        t = threading.Thread(target=self.user_quit, args=(1,))
        t.start()
        self.threads.append(t)
        
        sck = socket.socket() 
        sck.settimeout(SERVER_TIMEOUT)
        
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
                name_str = str(addr[0]) + ":" + str(addr[1])
                print("Got a connection from " + name_str)
                
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
                #self.threads.append(start_new_thread(self.handle_client, (c_s,addr[0] + ":" + addr[1],))) 
                t = threading.Thread(target=self.handle_client, args=(c_s,name_str,))
                t.start()
                print("Starting client thread #" + str(t.ident))
                self.threads.append(t)
                
            except socket.timeout:
                #print("Waiting for client connection...")
                aaaa = 1
            except:
                print("Unknown error while waiting for client connection")
                raise
        
        
        print("Waiting for threads to terminate before shutting down server")
        
        while(len(self.threads) > 0):
            for t in self.threads:
                t.join(0.1)
                #If the thread has shut down
                if(not t.is_alive()):
                    print("Stopped thread #" + str(t.ident))
                    self.threads.remove(t)
        
        print("Shutting down server")
        sck.close()
        return
    
    def user_quit(self, arg1):
        
        res = input()
        print("[USER] Local user has stopped server")
        self.shutdown_flag = 1
        return
        
    #This function  is called in its own thread to constantly offload data from the tdc
    def service_tdc(self, arg1):
        
        print("[TDC SERVICE] Thread has started")
        
        #Start the TDC
        self.init_device()
        
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
                    self.record_offset = 0
                    self.offset_timestamp = t_s[0][i]
                    print("[TDC SERVICE] Recorded TDC offset as " + str(self.offset_timestamp))
                    #self.offset_timestamp = 0
                
                #If we find a timestamp that isn't the dummy channel
                elif(t_s[1][i] != DUMMY_CHANNEL_NUM):
                    self.timestamp_list.append(pulse_record(t_s[1][i], t_s[0][i] - self.offset_timestamp))
                    print("[TDC SERVICE] Got pulse on channel #" + str(t_s[1][i]) + ", absolute = " + str(t_s[0][i]) + ", relative = " + str(t_s[0][i] - self.offset_timestamp))
             
        #If we're here then the server shutdown command has been sent
        self.device.deInitialize()    
        self.device = 0
        
        return
        
        
        
        
    
    #This function handles a client connected at socket C   
    def handle_client(self, c, ip_str):
        
        time.sleep(0.1)
        
        while(not self.shutdown_flag):
            #Receive one command byte from the client
            client_cmd = james_utils.receive_bytes(c, 1)
            
            if(client_cmd == SOCKET_TIMEOUT):
                print("[CLIENT HANDLER] Timed out waiting for client command from " + ip_str)
            elif(client_cmd == SOCKET_DEAD or client_cmd == -3):
                print("[CLIENT HANDLER] Dead socket, dropping client at " + ip_str)
                break
            elif(client_cmd[0] == COMMAND_PING):
                print("[CLIENT HANDLER] Client at " + ip_str + ": COMMAND_PING")
                c.send(SERVER_ACK)
            elif(client_cmd[0] == COMMAND_CLOSE_CONNECTION):
                print("[CLIENT HANDLER] Client at " + ip_str + ": COMMAND_CLOSE_CONNECTION")
                break
            elif(client_cmd[0] == COMMAND_CLEAR_ALL):
                print("[CLIENT HANDLER] Client at " + ip_str + ": COMMAND_CLEAR_ALL")
                self.timestamp_list = []
            elif(client_cmd[0] == COMMAND_GET_AND_CLEAR):
                print("[CLIENT HANDLER] Client at " + ip_str + ": COMMAND_GET_AND_CLEAR")
                res = james_utils.receive_bytes(c, 1)
                if(res == -1 or res == -2 or res == -3):
                    print("[CLIENT HANDLER] Unable to get channel from client at " + ip_str + ", dropping client")
                    break
                else:
                    channel_num = res[0]
                    ts = 0
                    for t in self.timestamp_list:
                        if(t.channel_num == channel_num):
                            ts = t.timestamp
                            self.timestamp_list.remove(t)
                            
                    #If we're in dummy mode then just give the system time
                    if(self.dummy_mode):
                        ts = int(time.time() * 10000000)
               
                    james_utils.send_timestamp(c, ts)
                    print("[CLIENT HANDLER] Timestamp sent to client for channel " + str(channel_num) + " was " + str(ts))
            else:
                print("[CLIENT HANDLER] Unknown command received from client: " + hex(client_cmd[0]))
                
                
        c.close()
        return

        

                
        
        
    
        
    