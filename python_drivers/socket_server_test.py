# -*- coding: utf-8 -*-
"""
Created on Mon Jul  6 17:16:49 2020

@author: tianlab01
"""


import socket

s = socket.socket()
host = socket.gethostname() # Get local machine name
s.bind((host, 25565))

#Start listening for a connection
s.listen(5)

c, addr = s.accept()

print("Got connection")