# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 10:46:08 2020

@author: tianlab01
"""


import socket
import pulse_gen_obj
import time
import tdc_wrapper
import ssl
import os.path

#Open a secure socket?
SECURE_MODE = 0

CLIENT = 0
SERVER = 1
SERVER_ACK = b'\x66'
SERVER_ACK_BYTE = 0x66
TCP_TIMEOUT = 10 #10 second timeout

#Server commands
SERVER_RECEIVE_PULSE = 4
SERVER_SEND_PULSE = 5
SERVER_EXIT = 6

#TDC Channels
CHANNEL_ALICE_SEND = 0
CHANNEL_ALICE_RECEIVE = 1
CHANNEL_BOB_SEND = 0
CHANNEL_BOB_RECEIVE = 1

#Bob's responses
TDC_SUCCESS = 8

#IP of the BOB
SERVER_IP = "127.0.0.1"

pem_path = 'C:\certs\certchain.pem'
key_path = 'C:\certs\private.key'


class time_sync:
    
    s = 0 #Socket for this class
    sck_u = 0 #Unsecure version of the socket
    server_ip = ""#IP which this machine will try to connect if it is in client mode
    mode = CLIENT
    board = 0
    tdc= 0
    port = 25566
    
    time_diff = 0
    path_len = 0
    
    channel_send = 0
    channel_receive = 0
    
    t_a_r = 0
    t_a_s = 0
    t_b_r = 0
    t_b_s = 0
    
    
    def __init__(self, COM_PORT, s_ip, m):
        
        #initialize the socket
        self.init_socket()
        
        #Initialize the FPGA
        self.board = pulse_gen_obj.pulse_gen(COM_PORT)
        
        #initialize the tdc
        self.tdc = tdc_wrapper.tdc_wrapper(5)
        
        #save the other parameters
        self.server_ip = s_ip
        self.mode = m
        
        if(m == CLIENT):
            print("Initialized time sync in CLIENT mode")
            self.channel_send = CHANNEL_ALICE_SEND
            self.channel_receive = CHANNEL_ALICE_RECEIVE
        else:
            print("Initialized time sync in SERVER mode")
            self.channel_send = CHANNEL_BOB_SEND
            self.channel_receive = CHANNEL_BOB_RECEIVE
        
        return
    
    def init_socket(self):
        
        if(SECURE_MODE):
            print("Initializing socket in secure mode")
            #Make sure we have an SSL key
            self.check_key()
            
            #SSL Stuff
            context = ssl.SSLContext(ssl.PROTOCOL_TLS_SERVER)
            context.load_cert_chain(pem_path, key_path)
                
            #Open a secure socket
            if(self.mode == CLIENT):
                self.sck_u = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
                self.s = context.wrap_socket(self.sck_u, server_hostname=SERVER_IP)
            else:
                self.sck_u = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
                self.s = context.wrap_socket(self.sck_u, server_side=True)
                
        else:
            print("Initializing socket in UNSECURE(!) mode")
            self.sck_u = socket.socket()
            self.s = self.sck_u
            
        
        return
    
    def check_key(self):
        #If the key already exists
        if(os.path.exists(key_path) and os.path.exists(pem_path)):
            print("SSL Key found, skiping key generation...")
            return
        #Generate a key
        print("No SSL key found, generating key...")
        cert_gen()
        
        return
    
    def test_server(self):
        
        print("Server in test mode, will echo back bytes received...")
        
        host = socket.gethostname() # Get local machine name
        self.sck_u.bind((host, self.port))
        
        #Start listening for a connection
        self.sck_u.listen(5)
        
        print("Waiting for connection from client...")
    
        c, addr = self.s.accept()     # Establish connection with client.
        
        print("Got a connection from " + addr[0] + ", Receiving 5 bytes")
        
        byte_res = self.receive_bytes(c, 5)
        
        print("Got: " + str(byte_res) + ", sending back...")
        
        c.send(byte_res)
        
        print("Sending test timestamp to client...")
        
        self.send_timestamp(c, 25566)
        
        print("Closing server...")
        
        c.close()
        self.s.close()
        
        return 0
    
    
    def test_client(self):
        
        print("Testing connection to server")
        
        #connect to the client
        self.s.connect((self.server_ip, self.port))
        
        print("Connected to server, sending [0x0A, 0x0B, 0x0C, 0x0D, 0x0E]..")

        self.s.send(bytearray([0x0A, 0x0B, 0x0C, 0x0D, 0x0E]))

        print("Waiting for server response...")

        server_resp = self.receive_bytes(self.s, 5) 
        
        if(server_resp != bytearray([0x0A, 0x0B, 0x0C, 0x0D, 0x0E])):
            print("Error, bad response from server during test!")
        else:
            print("Got correct response from server!")
            
        print("Testing timestamp transmission")
        
        t_s = self.receive_timestamp(self.s)
        
        if(t_s != 25566):
            print("Error, bad timestamp received from server")
        else:
            print("Timestamp test success!")
            
        self.s.close()
        
        return 0
        
        
        
        
    #SERVER SIDE SYNCH PROCEDURE
    #Returns 0 on success
    #must be called in server mode
    def start_server_sync(self):
        
        if(self.mode == CLIENT):
            print("Error, start_server must be called with the object in server mode!")
            return -1
    
        host = socket.gethostname() # Get local machine name
        self.sck_u.bind((host, self.port))
        
        #Start listening for a connection
        self.sck_u.listen(5)
        
        print("Waiting for connection from client...")
        
        #Once a client connects we'll be here
        c, addr = self.s.accept()     # Establish connection with client.
        
        print("Got a connection from " + addr[0] + ", sending ACK")
        
        #Send back a 0 acknowledging that we are connected
        c.send(SERVER_ACK)
        
        print("Waiting for ACK from client...")
        
        #Wait for one byte from the client
        ack_res = self.receive_bytes(c, 1)
        
        if(self.check_ack_res(ack_res)):
            print("Bad ACK from client, exiting")
            c.close()
            self.s.close()
            return 0
        
        print("Handshake from client successful, waiting for command")
        
        while(self.server_handle_command(c)):
            print("...")

        print("Closing server...")
        return 0
        
    #Returns 0 on server exit
    def server_handle_command(self, sck):
        
        #Receive one command byte from the client
        client_cmd = sck.recieve_bytes(sck, 1)
        if(client_cmd == -1):
            print("Timed out waiting for command from client")
            return 1
        
        if(client_cmd[0] == SERVER_SEND_PULSE):
            print("Command received: SERVER_SEND_PULSE")
            self.pulse_bob_to_alice(sck)
            return 1
            
        elif(client_cmd[0] == SERVER_RECEIVE_PULSE):
            print("Command received: SERVER_RECEIVE_PULSE")
            self.pulse_alice_to_bob(sck)
            return 1
            
        elif(client_cmd[0] == SERVER_EXIT):
            print("Command received: SERVER_EXIT")
            sck.close()
            self.s.close()
            return 0
            
        else:
            print("Invalid command received: " + hex(client_cmd[0]))
            return 1
        

      
    #CLIENT SIDE SYNC PROCEDURE
    #Returns the time difference between server and client in picoseconds
    #Returns -1 on error
    def start_client_sync(self):
        
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
        
        if(self.do_sync(self.s) == -1):
            print("Time sync failed!")
        
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
    def receive_timestamp(self, sck):
      
       #Wait for bob to respond with a number other than 0
        bob_resp = self.receive_bytes(sck, 2)
        
        if(bob_resp[0] == 0 and bob_resp[1] == 0):
            print("Error, timestamp length on receive was 0!")
            return -1
        
        #Recieve the length of the number in bytes via
        num_bytes = (bob_resp[1] << 8) + bob_resp[0]
        
        #Receive and reconstruct the whole number
        return int.from_bytes(self.receive_bytes(sck, num_bytes), byteorder='big')
    
    def send_timestamp(self, sck, ts):
        
        ts_bs = int.to_bytes(ts, byteorder='big')
        len_bs = bytearray([(len(ts_bs) >> 8) & 0xFF, len(ts_bs)&0xFF ])
        
        #send the length in 2 bytes
        #sck.send(int.to_bytes(len(ts_bs), byteorder='big'))
        sck.send(len_bs)
        
        #Then send the number itself
        sck.send(ts_bs)
        
        return
    
    #Returns 0 on success
    def do_sync(self, sck):
        
        ret_val = 0
        
        if(self.board.ping_board()):
            print("Error, unable to connect to board")
            return -1
        
        #Set the period to something fast
        self.board.set_period(10)
        
        num_tries = 10
        while(num_tries):
            
            #Tell bob to receive a pulse
            sck.send(bytearray([SERVER_RECEIVE_PULSE]))
            
            #Send a pulse
            if(self.pulse_alice_to_bob(sck)):
                print("Sending pulse from Alice to Bob failed, retrying...")
                num_tries -= 1
            else:
                print("Successfully sent pulse from Alice to Bob!")
                break
            
        if(num_tries == 0):
            print("Ran out of tries while trying to send pulse from Alice to Bob!")
            ret_val = -1
            
        num_tries = 10
        while(num_tries):
            
            #Tell bob to receive a pulse
            sck.send(bytearray([SERVER_SEND_PULSE]))
            
            #Send a pulse
            if(self.pulse_bob_to_alice(sck)):
                print("Sending pulse from Bob to Alice failed, retrying...")
                num_tries -= 1
            else:
                print("Successfully sent pulse from Bob to Alice!")
                break
            
        if(num_tries == 0):
            print("Ran out of tries while trying to send pulse from Bob to Alice!")
            ret_val = -1
         
        return ret_val

    #Returns 0 on success
    def pulse_alice_to_bob(self, sck):
        
        ret_val = 0
        
        #If we are Alice
        if(self.mode == CLIENT):
            
            print("Sending pulse from client to server...")
            
            #Wait for a bit so bob's tdc is reay
            time.sleep(1)
            
            #Start alice's tdc
            if(self.tdc.start_record()):#If it fails to start
                return -1
            
            #Send a pulse
            print("Sending pulse from Alice to Bob")
            self.board.send_pulse(0,0)
            
            #Wait for the TDC to pick up the pulse
            time.sleep(1)
            
            #Stop our TDC and recover the timestamp
            self.t_a_s = self.tdc.end_record(self.channel_send)
            if(self.t_a_s < 1):
                print("Error, Alice did not detect her own pulse on her TDC")
                ret_val = -1
            else:
                print("Alice detected her own pulse! t_a_s = " + str(self.t_a_s))
                
            #Receive the timestamp sent by bob
            self.t_b_r = self.receive_timestamp(sck)
            if(self.t_b_r == 0):
                print("Error, Bob did not detect Alice's pulse!")
                ret_val = -1
            else:
                print("Bob detected Alice's pulse! t_b_r = " + str(self.t_b_r))
                
        #Must be Bob (server)
        else:
            
            print("Waiting for pulse from Alice...")
            
            self.t_b_r = self.tdc.wait_pulse(self.channel_receive)
            
            if(self.t_b_r == 0):
                print("Error, Bob did not receive a pulse from Alice!")
                ret_val = -1
            else:
                print("Bob received Alice's pulse! t_b_r = " + str(self.t_b_r))
                
            self.send_timestamp(sck, self.t_b_r)
            
        return ret_val
    
    #Returns 0 on success
    def pulse_bob_to_alice(self, sck):
        
        ret_val = 0
        
        #If we are Bob
        if(self.mode == SERVER):
            
            print("Sending pulse to Alice...")
            
            #Wait for a bit so bob's tdc is reay
            time.sleep(1)
            
            #Start bob's tdc
            if(self.tdc.start_record()):#If it fails to start
                return -1
            
            #Send a pulse
            print("Sending pulse from Alice to Bob")
            self.board.send_pulse(0,0)
            
            #Wait for the TDC to pick up the pulse
            time.sleep(1)
            
            #Stop our TDC and recover the timestamp
            self.t_b_s = self.tdc.end_record(self.channel_send)
            if(self.t_b_s < 1):
                print("Error, Bob did not detect his own pulse on her TDC")
                ret_val = -1
            else:
                print("Bob detected her own pulse! t_a_s = " + str(self.t_a_s))
                
            #Send the timestamp to Alice
            self.send_timestamp(sck, self.t_b_s)
                
        #Must be Alice
        else:
            
            print("Waiting for pulse from Bob...")
            
            self.t_a_r = self.tdc.wait_pulse(self.channel_receive)
            
            if(self.t_a_r == 0):
                print("Error, Alice did not receive a pulse from Bob!")
                ret_val = -1
            else:
                print("Alice received Bob's pulse! t_b_r = " + str(self.t_b_r))
                
            self.send_timestamp(sck, self.t_b_r)
            
        return ret_val
    
    
    
    
    
    def calc_path_len(self, t_a_r, t_a_s, t_b_r, t_b_s):
        self.len_diff = 0
        return 0
    
    
    def calc_time_diff(self, t_a_r, t_a_s, t_b_r, t_b_s):
        
        return 0
    
        #Returns -1 on timeout
    def receive_bytes(self, c, num_bytes):
        
        byte_res = []
        
        time_now = time.time()
            
        while(time.time() - time_now < TCP_TIMEOUT):
            
            #res = c.recv(1024)
            res = c.recv(1)
            
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
   
    
    
from OpenSSL import crypto, SSL

def cert_gen(
    emailAddress="a@g.co",
    commonName="cn",
    countryName="CA",
    localityName="SB",
    stateOrProvinceName="Illinois",
    organizationName="UC",
    organizationUnitName="QC",
    serialNumber=0,
    validityStartInSeconds=0,
    validityEndInSeconds=10*365*24*60*60,
    KEY_FILE = key_path,
    CERT_FILE =pem_path):
    #can look at generated file using openssl:
    #openssl x509 -inform pem -in selfsigned.crt -noout -text
    # create a key pair
    k = crypto.PKey()
    k.generate_key(crypto.TYPE_RSA, 4096)
    # create a self-signed cert
    cert = crypto.X509()
    cert.get_subject().C = countryName
    cert.get_subject().ST = stateOrProvinceName
    cert.get_subject().L = localityName
    cert.get_subject().O = organizationName
    cert.get_subject().OU = organizationUnitName
    cert.get_subject().CN = commonName
    cert.get_subject().emailAddress = emailAddress
    cert.set_serial_number(serialNumber)
    cert.gmtime_adj_notBefore(0)
    cert.gmtime_adj_notAfter(validityEndInSeconds)
    cert.set_issuer(cert.get_subject())
    cert.set_pubkey(k)
    cert.sign(k, 'sha512')
    with open(CERT_FILE, "wt") as f:
        f.write(crypto.dump_certificate(crypto.FILETYPE_PEM, cert).decode("utf-8"))
    with open(KEY_FILE, "wt") as f:
        f.write(crypto.dump_privatekey(crypto.FILETYPE_PEM, k).decode("utf-8"))




    