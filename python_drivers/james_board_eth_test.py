# -*- coding: utf-8 -*-
"""
Created on Tue Jun 30 20:50:01 2020

@author: tianlab01
"""

#!/usr/bin/python           # This is client.py file

import socket               # Import socket module

s = socket.socket()         # Create a socket object
host = "205.208.56.219" # Get local machine name
port = 7             # Reserve a port for your service.

s.connect((host, port))
s.send(b'\xe8\x03\x03\x03\x03\x55')
res = s.recv(6)
print("Got: " + str(res) )
s.close()     