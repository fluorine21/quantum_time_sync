# -*- coding: utf-8 -*-
"""
Created on Mon Jul  6 17:16:40 2020

@author: tianlab01
"""


import socket
server_ip = "205.208.56.201"

s = socket.socket()


s.connect((server_ip, 25565))

s.close()

print("done")