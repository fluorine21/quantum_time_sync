# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 12:19:37 2020

@author: tianlab01
"""


import time_sync
import time

server_ip = "205.208.56.201"
ts = time_sync.time_sync("COM3", server_ip, time_sync.CLIENT)


ts.connect_to_server()

ts.ping_server()


#time.sleep(60)


ts.disconnect_from_server()

