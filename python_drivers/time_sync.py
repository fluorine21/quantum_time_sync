# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 10:46:08 2020

@author: tianlab01
"""


import socket
import pulse_gen
import time
import tdc_wrapper
import ssl
import os.path
from OpenSSL import crypto

#Open a secure socket?
SECURE_MODE = 1

CLIENT = 0
SERVER = 1
SERVER_ACK = b'\x66'
SERVER_ACK_BYTE = 0x66
CLIENT_TIMEOUT = 15 #5 second timeout
SERVER_TIMEOUT = 15 #Long timeout for the server

#Server commands
SERVER_RECEIVE_PULSE = 4
SERVER_SEND_PULSE = 5
SERVER_EXIT = 6
SERVER_PING = 7

#TDC Channels
CHANNEL_ALICE_SEND = 104
CHANNEL_ALICE_RECEIVE = 104
CHANNEL_BOB_SEND = 104
CHANNEL_BOB_RECEIVE = 104

#Bob's responses
TDC_SUCCESS = 8

#IP of the BOB
SERVER_IP = "127.0.0.1"

pem_path = 'C:\certs\certchain.pem'
key_path = 'C:\certs\private.key'
SSL_PATH = 'C:\certs'


TIMESTAMP_BYTE_LEN = 20


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
    
    socket_dead = 0
    dummy_mode = 0
    
    
    def __init__(self, COM_PORT, s_ip, m, dm):
        
        #save the other parameters
        self.server_ip = s_ip
        self.mode = m
        
        #initialize the socket
        self.init_socket()
        
        #Initialize the FPGA
        self.board = pulse_gen.pulse_gen(COM_PORT)
        
        #initialize the tdc
        self.tdc = tdc_wrapper.tdc_wrapper(5, dm)
        
        
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
                #self.s = context.wrap_socket(self.sck_u, server_hostname=SERVER_IP)
                #self.s = ssl.wrap_socket(self.sck_u, ca_certs=pem_path, cert_reqs=ssl.CERT_REQUIRED)
                self.s = ssl.wrap_socket(self.sck_u, ca_certs=pem_path)
            else:
                self.sck_u = socket.socket(socket.AF_INET, socket.SOCK_STREAM, 0)
                #self.s = context.wrap_socket(self.sck_u, server_side=True)
                
        else:
            print("Initializing socket in UNSECURE(!) mode")
            self.sck_u = socket.socket()
            self.s = self.sck_u
            
        #Set the socket timeout if we're the client
        if(self.mode == CLIENT):
           self.s.settimeout(CLIENT_TIMEOUT)
           #self.sck_u.settimeout(CLIENT_TIMEOUT)
        else:
            #Set the timeout to none if we're the server so that we always block on receiving bytes
            #self.s.settimeout(SERVER_TIMEOUT)
            self.sck_u.settimeout(SERVER_TIMEOUT)
             
            
            
        return
    
    def connect_to_server(self):
        
        if(self.mode != CLIENT):
           print("Error, cannot ping server while in server mode")
           return -1
       
        print("Attempting to connect to server")
        #connect to the client
        self.s.connect((self.server_ip, self.port))
        time.sleep(0.5)
        if(self.is_socket_alive(self.s)):
            print("Error, failed to connect to server")
            return -1
        else:
            print("Connected to server!")
            if(SECURE_MODE):
                if(self.s.version()):
                    print("SSL version: " + self.s.version())
                else:
                    print("Warning, socket is NOT SECURE!")
            return 0
        
    def disconnect_from_server(self):
    
        if(self.mode != CLIENT):
           print("Error, cannot ping server while in server mode")
           return -1
       
        print("Closing connection to server")
        self.s.close()
        
    #Returns socket object on successful connection
    #Returns 0 otherwise
    def wait_connection(self, sck):
        
        if(self.mode == CLIENT):
            print("Error, cannot call wait_connection in client mode!")
            return 0
        #Keep trying to connect
        while(1):
            try:
                 #Once a client connects we'll be here
                c, addr = sck.accept()     # Establish connection with client.
                print("Got a connection from " + addr[0])
                
                if(SECURE_MODE):
                   c_s = ssl.wrap_socket(c,
                                server_side=True,
                                certfile=pem_path,
                                keyfile=key_path,
                                ssl_version=ssl.PROTOCOL_TLS)
                else:
                    c_s = c
                
                c_s.settimeout(SERVER_TIMEOUT)
                return c_s
            except socket.timeout:
                print("Waiting for client connection...")
            except:
                print("Unknown error while waiting for client connection")
                raise
        
    
    def check_key(self):
        #If the key already exists
        if(os.path.exists(key_path) and os.path.exists(pem_path)):
            print("SSL Key found, skiping key generation...")
            return
        #Generate a key
        print("No SSL key found, generating key...")
        cert_gen()
        
        return
        
        
    def ping_server(self):
        
        if(self.mode != CLIENT):
           print("Error, cannot ping server while in server mode")
           return -1
       
        #Send the ping server command
        self.s.send(bytearray([SERVER_PING]))

        if(self.wait_ack(self.s)):
            print("Error, bad ACK received from server while pinging")
            return -1
            
        #receive the timestamp
        if(self.receive_timestamp(self.s) != 1234567890):
            print("Error, bad timestamp received from server while pinging")
            return -1
        else:
            print("Server ping test success!")
        
        return 0
            
    #Starts the server's command handler
    #Returns 0 on success
    #must be called in server mode
    def start_server(self):
        
        if(self.mode == CLIENT):
            print("Error, start_server must be called with the object in server mode!")
            return -1
    
        host = socket.gethostname() # Get local machine name
        self.sck_u.bind((host, self.port))
        #self.s.bind((host, self.port))
        
        #Start listening for a connection
        self.sck_u.listen(5)
        #self.s.listen(5)
        
        print("Waiting for connection from client...")
        
        #Once a client connects we'll be here
        c = self.wait_connection(self.sck_u)
        if(c == 0):
            return -1
        
        print("Waiting for command from client...")
        
        while(self.server_handle_command(c)):
            print("Checking socket...")
            if(self.is_socket_alive(c) or self.socket_dead):
                self.socket_dead = 0
                print("Dead socket, client has closed connection, waiting for new connection...")
                c = self.wait_connection(self.sck_u)
                if(c == 0):
                    print("No socket returned while trying to connect to client, exiting...")
                    self.sck_u.close()
                    return -1
                print("Waiting for command from client...")
            else:
                print("Socket is alive, waiting for next command...")

        print("Closing server...")
        return 0
        
    #Server side command handler, handles incomming commands from client
    #Returns 0 on server exit
    def server_handle_command(self, sck):
        
        #Receive one command byte from the client
        client_cmd = self.receive_bytes(sck, 1)
        
        if(client_cmd == -1):
            print("Timed out waiting for command")
            return 1
        
        if(client_cmd[0] == SERVER_SEND_PULSE):
            sck.send(SERVER_ACK)
            print("Command received: SERVER_SEND_PULSE")
            self.pulse_bob_to_alice(sck)
            return 1
            
        elif(client_cmd[0] == SERVER_RECEIVE_PULSE):
            sck.send(SERVER_ACK)
            print("Command received: SERVER_RECEIVE_PULSE")
            self.pulse_alice_to_bob(sck)
            return 1
            
        elif(client_cmd[0] == SERVER_EXIT):
            sck.send(SERVER_ACK)
            print("Command received: SERVER_EXIT")
            sck.close()
            self.sck_u.close()
            return 0
        elif(client_cmd[0] == SERVER_PING):
            sck.send(SERVER_ACK)
            print("Command received: SERVER_PING")
            print("Sending timestamp 1234567890")
            self.send_timestamp(sck, 1234567890)
            return 1
            
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
        #self.s.connect((self.server_ip, self.port))
        if(self.ping_server()):
            print("Error communicating with server, unable to perform time synchronization")
            return -1
        
        print("Connected to server, performing time synchronization...")
        
        if(self.do_sync(self.s) == -1):
            print("Time sync failed!")
            return -1
        else:
            print("Time sync success! time_diff = " + str(self.time_diff) + ", path_len = " + str(self.path_len))
            return 0
        
    
    
    #returns 0 on success
    def check_board(self):
        return self.board.ping_board()
    
    #Waits to receive an ACK from the server
    #Returns 0 on success
    def wait_ack(self, sck):
        ack_res = self.receive_bytes(self.s, 1)
        return self.check_ack(ack_res)
    
    #returns 0 on success
    def check_ack(self, ack_res):
         if(ack_res == -1):
            print("Timed out waiting for ACK")
            return -1
         elif(ack_res[0] == SERVER_ACK_BYTE):
            print("Received ACK!")
            return 0
         else:
            print("Bad ACK received: " + hex(ack_res[0]) + ", was an invalid command sent to the server?")
            return -1
        
    #Returns -1 on fail
    def receive_timestamp(self, sck):
        #Receive and reconstruct the whole number
        return int.from_bytes(self.receive_bytes(sck, TIMESTAMP_BYTE_LEN), byteorder='big', signed = False)
    
    def send_timestamp(self, sck, ts):        
        ts_bs = int(ts).to_bytes(TIMESTAMP_BYTE_LEN, byteorder='big', signed = False)        
        #Then send the number itself
        sck.send(ts_bs)        
        return
    
    #Returns 0 on success
    def do_sync(self, sck):
        
        ret_val = 0
        
        if(self.board.ping_board()):
            print("Error, unable to connect to FPGA board")
            return -1
        
        if( self.is_socket_alive(sck) or self.ping_server()):
            print("Error, not connected to server (Bob)")
            return -1
            
        
        #Set the period to something fast
        self.board.set_period(10)
        
        num_tries = 10
        while(num_tries):
            
            #Tell bob to receive a pulse
            sck.send(bytearray([SERVER_RECEIVE_PULSE]))
            
            if(self.wait_ack(sck)):
                print("Error, no ACK received from server while telling it to receive a pulse")
            
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
            
            if(self.wait_ack(sck)):
                print("Error, no ACK received from server while telling it to send a pulse")
            
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
         
        self.calc_path_len()
        self.calc_time_diff()
        return ret_val

    #Returns 0 on success
    def pulse_alice_to_bob(self, sck):
        
        ret_val = 0
        
        #If we are Alice
        if(self.mode == CLIENT):
            
            #Wait for a bit so bob's tdc is reay
            time.sleep(1)
            
            #Start alice's tdc
            if(self.tdc.start_record()):#If it fails to start
                return -1
            
            #Send a pulse
            print("Sending pulse to Bob")
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
        if(self.mode != CLIENT):
            
            print("Sending pulse to Alice...")
            
            #Wait for a bit so Alice's tdc is reay
            time.sleep(1)
            
            #Start bob's tdc
            if(self.tdc.start_record()):#If it fails to start
                return -1


            self.board.send_pulse(0,0)
            
            #Wait for the TDC to pick up the pulse
            time.sleep(1)
            
            #Stop our TDC and recover the timestamp
            self.t_b_s = self.tdc.end_record(self.channel_send)
            if(self.t_b_s < 1):
                print("Error, Bob did not detect his own pulse on her TDC")
                ret_val = -1
            else:
                print("Bob detected his own pulse! t_a_s = " + str(self.t_b_s))
                
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
                print("Alice received Bob's pulse! t_a_r = " + str(self.t_a_r))
                
            self.t_b_s = self.receive_timestamp(sck)
            
            if(self.t_b_s < 1):
                print("Error ,Bob did not detect his own pulse!")
                ret_val = -1
            else:
                print("Bob detected his own pulse! t_b_s = " + str(self.t_b_s))
            
        return ret_val
    
    #Returns 0 if connection is active
    def is_socket_alive(self, sock):
        
        if(SECURE_MODE):
            
            #Cannot use this method to detect a dead socket in secure mode, must detect it when we go to read from it
            
            return 0
            
            # if(self.mode == CLIENT):
            #     return 0
            
            # retval = 0
            # self.sck_u.settimeout(0.01)
            # try:
            #     #If this returns something that isn't None then we are connected
            #     if(len(self.sck_u.recv(16, socket.MSG_PEEK)) > 0):
            #         retval = 0
            #     else:
            #         retval = -1
            # except socket.timeout:
            #     retval = 0  
                
            # self.sck_u.settimeout(SERVER_TIMEOUT)   
            # return retval
           
        else:
            sock.settimeout(0.01)
            retval = 0
            try:
                # this will try to read bytes without blocking and also without removing them from buffer (peek only)
                data = sock.recv(16, socket.MSG_PEEK)
                #data = self.sck_u.recv(0)
                if len(data) == 0:
                    retval = -1
     
            except socket.timeout:
                #Timeout indicates active connection
                retval = 0
                
            if(self.mode == CLIENT):
                sock.settimeout(CLIENT_TIMEOUT)
            else:
                sock.settimeout(SERVER_TIMEOUT)
            
            return retval
    
    
    
    def calc_path_len(self):
        self.path_len = ((self.t_a_r - self.t_a_s) - (self.t_b_r - self.t_b_s)) / 2
    
    
    def calc_time_diff(self):
        self.time_diff = (self.t_b_r + self.t_b_s - self.t_a_r - self.t_a_s) / 2
    
    
    def receive_bytes(self, c, num_bytes):
        
        byte_res = []
            
        #Need our own timer to figure out if the socket is closed
        
        while(1):
            
            try:
                #res = c.recv(1024)
                res = c.recv(1)
                
                if(len(res) > 0):
            
                    #copy all bytes into the result array
                    for b in res:
                        byte_res.append(b)
                    #If we have all of the bytes
                    if(len(byte_res) >= num_bytes):
                        return byte_res
                else:
                    print("Received an empty byte array from socket, socket is probably closed...")
                    self.socket_dead = 1
                    return -1
            except socket.timeout:
                print("Timed out while waiting for bytes...")
                return -1
            except Exception as e:
                print("Unknown error occured while waiting for bytes")
                return -1
                
   
   
    
    


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
    
    #Create the directory if it does not exist
    if not os.path.exists(SSL_PATH):
        os.makedirs(SSL_PATH)
    
    
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
    with open(CERT_FILE, "wt+") as f:
        f.write(crypto.dump_certificate(crypto.FILETYPE_PEM, cert).decode("utf-8"))
    with open(KEY_FILE, "wt+") as f:
        f.write(crypto.dump_privatekey(crypto.FILETYPE_PEM, k).decode("utf-8"))




    