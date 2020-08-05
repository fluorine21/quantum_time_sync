# -*- coding: utf-8 -*-
"""
Created on Thu Jul 16 14:44:28 2020

@author: tianlab01
"""


import socket

#Constants for Alice and Bob
ALICE_PORT = "COM4"
BOB_PORT = "COM9"

ALICE_CHANNEL_SEND = 3
ALICE_CHANNEL_RECEIVE = 2
BOB_CHANNEL_SEND = 1
BOB_CHANNEL_RECEIVE = 4

TDC_THRESHOLD = 0.1 #100mV for SNSPDs



TIMESTAMP_BYTE_LEN = 20
#Rerutns list of bytes object  
def timestamps_to_bytes(list_of_timestamps):
            
    byte_array = []
    for l in list_of_timestamps:
        res = int(l).to_bytes(TIMESTAMP_BYTE_LEN, byteorder='big', signed = False)  
        byte_array += list(res)
    return byte_array
            
            
            
def bytes_to_timestamps(byte_array):
    
    #byte_array = list(b_a)
    timestamp_list = []
    
    if(len(byte_array) % 20 != 0):
        print("Error, byte array for bytes_to_timestamp was of the wrong size")
        return []
    
    for i in range(0, len(byte_array), TIMESTAMP_BYTE_LEN):
        ts_b = byte_array[i:i+TIMESTAMP_BYTE_LEN]
        res = int.from_bytes(ts_b, byteorder='big', signed = False)
        timestamp_list.append(res)
        
    return timestamp_list
    
    
    

#Returns -1 on fail
def receive_timestamp(sck):
    #Receive and reconstruct the whole number
    res = receive_bytes(sck, TIMESTAMP_BYTE_LEN)
    if(res == -1 or res == -2 or res == -3):
        print("Timed out waiting for timestamp")
        return -1
    return int.from_bytes(res, byteorder='big', signed = False)

def send_timestamp(sck, ts):        
    ts_bs = int(ts).to_bytes(TIMESTAMP_BYTE_LEN, byteorder='big', signed = False)        
    #Then send the number itself
    sck.send(ts_bs)        
    return

#Returns bytestream on success
#Returns -1 on timeout
#Returns -2 on dead socket
#Returns -3 on other error
def receive_bytes(c, num_bytes):
    
    byte_res = []
                
    while(1):
        
        try:
            
            num_bytes_to_receive = num_bytes - len(byte_res)
            if(num_bytes_to_receive > 1024):
                num_bytes_to_receive = 1024
            
            #res = c.recv(1024)
            res = c.recv(num_bytes_to_receive)
            
            if(len(res) > 0):
        
                #copy all bytes into the result array
                #for b in res:
                byte_res += list(res)
                #If we have all of the bytes
                if(len(byte_res) >= num_bytes):
                    return byte_res
            else:
                print("Received an empty byte array from socket, socket is probably closed...")
                return -2
        except socket.timeout:
            #print("Timed out while waiting for bytes...")
            return -1
        #except Exception as e:
            #print("Unknown error occured while waiting for bytes")
            #return -3