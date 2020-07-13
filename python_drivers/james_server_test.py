# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 11:53:50 2020

@author: tianlab01
"""


import time_sync

home_ip = ""
ts = time_sync.time_sync("COM4", home_ip, time_sync.SERVER, 1)

print("Attempting to start server")
ts.start_server()

