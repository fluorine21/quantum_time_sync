# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 12:19:37 2020

@author: tianlab01
"""


import time_sync

server_ip = "172.251.35.3"
ts = time_sync.time_sync("COM3", server_ip, time_sync.CLIENT)


ts.connect_to_server()

ts.ping_server()

ts.disconnect_from_server()

