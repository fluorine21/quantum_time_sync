# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 10:46:08 2020

@author: tianlab01
"""


import socket
import pulse_gen_obj
import time
import tdc_wrapper

CLIENT = 0
SERVER = 1
SERVER_ACK = b'\x66'
SERVER_ACK_BYTE = 0x66
TCP_TIMEOUT = 10 #10 second timeout

#Server commands
RUN_TDC = b'\x03'

#TDC Channels
CHANNEL_ALICE_SEND = 0
CHANNEL_ALICE_RECIEVE = 1
CHANNEL_BOB_SEND = 0
CHANNEL_BOB_RECIEVE = 1

#Bob's responses
TDC_SUCCESS = 8

class time_sync:
    
    s = 0 #Socket for this class
    server_ip = ""#IP which this machine will try to connect if it is in client mode
    mode = CLIENT
    board = []
    tdc= []
    port = 25566
    
    
    def __init__(self, COM_PORT, s_ip, m):
        
        #initialize the socket object
        self.s = socket.socket() 
        
        #Initialize the FPGA
        self.board = pulse_gen_obj.pulse_gen(COM_PORT)
        
        #initialize the tdc
        tdc = tdc_wrapper.tdc_wrapper(5)
        
        #save the other parameters
        self.server_ip = s_ip
        self.mode = m
        
        if(m == CLIENT):
            print("Initialized time sync in CLIENT mode")
        else:
            print("Initialized time sync in SERVER mode")
        
        return
    
    #Returns 0 on success
    #must be called in server mode
    def start_server(self):
        
        if(self.mode == CLIENT):
            print("Error, start_server must be called with the object in server mode!")
            return -1
        
        
        #try:
    
        host = socket.gethostname() # Get local machine name
        self.s.bind((host, self.port))
        
        #Start listening for a connection
        self.s.listen(5)
        
        print("Waiting for connection from client...")
        
        #Once a client connects we'll be here
        c, addr = self.s.accept()     # Establish connection with client.
        
        print("Got a connection from " + addr[0] + ", sending ACK")
        
        #Send back a 0 acknowledging that we are connected
        c.send(SERVER_ACK)
        
        print("Waiting for ACK from client...")
        
        #Wait for one byte from the client
        ack_res = self.receive_bytes(c, 1)
        
        if(ack_res == -1):
            print("Timed out waiting for client ACK")
        elif(ack_res[0] == SERVER_ACK_BYTE):
            print("Received ACK from client!")
        else:
            print("Bad ACK received from client: " + hex(ack_res[0]))
        
        c.close()
        self.s.close()
        
        return 0
        
        #except:
            #print("Error starting server, is the port in use?")
            #return -1
        
        
    #Returns -1 on timeout
    def receive_bytes(self, c, num_bytes):
        
        byte_res = []
        
        time_now = time.time()
            
        while(time.time() - time_now < TCP_TIMEOUT):
            
            res = c.recv(1024)
            
            if(len(res) > 0):
        
                #copy all bytes into the result array
                for b in res:
                    byte_res.append(b)
                #If we have all of the bytes
                if(len(byte_res) >= num_bytes):
                    break
                
        if(time.time() - time_now >= TCP_TIMEOUT):
                print("Timed out waiting for client ACK, closing server")
                return -1
                
        return byte_res
                
                
            
    
    #Returns the time difference between server and client in picoseconds
    #Returns -1 on error
    def start_time_sync(self):
        
        if(self.mode == SERVER):
           print("Error, start_time_sync must be called in client mode!")
           return -1
        
        #connect to the client
        self.s.connect((self.server_ip, self.port))
        
        print("Connected to server, waiting for ACK")
        
        ack_res = self.receive_bytes(self.s, 1)
        
        if(self.check_ack(ack_res) != 0):
            return -1;
        
        #Send an ack to the server
        print("Sending ACK to server")
        self.s.send(SERVER_ACK)
        
        self.s.close()
        
        return 0
    
    
    #returns 0 on success
    def check_board(self):
        return self.board.ping_board()
    
    #returns 0 on success
    def check_ack(self, ack_res):
         if(ack_res == -1):
            print("Timed out waiting for ACK")
            return -1
         elif(ack_res[0] == SERVER_ACK_BYTE):
            print("Received ACK!")
            return 0
         else:
            print("Bad ACK received: " + hex(ack_res[0]))
            return -1
        
    #Returns -1 on fail
    def receive_timestamp(self):
      
       #Wait for bob to respond with a number other than 0
        bob_resp = self.receive_bytes(self.s, 2)
        
        if(bob_resp[0] == 0 and bob_resp[1] == 0):
            print("Error, Bob did not detect our light pulse!")
            return -1
        
        #Recieve the length of the number in bytes via
        num_bytes = (bob_resp[1] << 8) + bob_resp[0]
        
        #Receive and reconstruct the whole number
        return int.from_bytes(self.receive_bytes(self.s, num_bytes), byteorder='big')
    
    def do_sync(self):
        
        if(self.board.ping_board()):
            print("Error, unable to connect to board")
            return -1
        
        #Set the period to something fast
        self.board.set_period(10)
        
        #Alice and Bob's variales
        t_a_r = 0
        t_a_s = 0
        t_b_r = 0
        t_b_s = 0
        
        #if we're alice
        if(self.mode == CLIENT):
            
            #Tell bob to start listening for a light pulse
            self.s.send(RUN_TDC)
            
            #Now run our tdc to get t_a_s
            t_a_s = self.tdc.wait_pulse(CHANNEL_ALICE_SEND)
            
            #Send a nondelayed pulse
            self.board.send_pulse(0,0)
            
            #Receive and reconstruct the whole number
            t_b_r = self.receive_timestamp()
            
            if(t_b_r == -1):
                return -1
            
            #Now run our tdc for t_a_r (time alice receives bob's pulse)
            t_a_r = self.tdc.wait_pulse(CHANNEL_ALICE_RECIEVE)
            
            if(t_a_r == 0):
                print("Error, did not receive bob's pulse!")
                return -1
            
            #Receive bobs t_b_s
            t_b_s = self.receive_timestamp()
            
        #must be in client mode
        else:
            
            
            
            
            
            
            
        return
    
    
    
   
        
    