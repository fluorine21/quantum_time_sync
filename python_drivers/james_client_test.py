# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 12:19:37 2020

@author: tianlab01
"""


import time_sync


server_ip = "205.208.56.201"
ts = time_sync.time_sync("COM4", server_ip, time_sync.CLIENT, 1)


ts.connect_to_server()


ts.start_client_sync()


ts.disconnect_from_server()

