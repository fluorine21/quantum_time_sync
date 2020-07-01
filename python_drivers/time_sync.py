# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 10:46:08 2020

@author: tianlab01
"""


import socket
import pulse_gen_obj
import time

CLIENT = 0
SERVER = 1
SERVER_ACK = b'\x66'
SERVER_ACK_BYTE = 0x66
TCP_TIMEOUT = 1000

class time_sync:
    
    s = 0 #Socket for this class
    server_ip = ""#IP which this machine will try to connect if it is in client mode
    mode = CLIENT
    board = []
    port = 25566
    
    
    def __init__(self, COM_PORT, s_ip, m):
        
        #initialize the socket object
        self.s = socket.socket() 
        
        #Initialize the FPGA
        self.board = pulse_gen_obj.PULSE_GEN(COM_PORT)
        
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
            print("Error, this function must be called with the object in server mdoe")
            return -1
        
        
        try:
        
            host = socket.gethostname() # Get local machine name
            self.s.bind((host, self.port))
            
            #Start listening for a connection
            self.s.listen(5)
            
            print("Waiting for connection from client...")
            
            #Once a client connects we'll be here
            c, addr = self.s.accept()     # Establish connection with client.
            
            print("Got a connection from " + addr + ", sending ACK")
            
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
        
        except:
            print("Error starting server, is the port in use?")
            return -1
        
        
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
    
    
    
    