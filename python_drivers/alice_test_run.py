# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 12:19:37 2020

@author: tianlab01
"""


import time_sync
import james_utils
import tdc_wrapper

server_ip = "192.168.56.1"
tdc = tdc_wrapper.tdc_wrapper(15,0,tdc_wrapper.MODE_CLIENT,"192.168.56.1")
ts = time_sync.time_sync(james_utils.ALICE_PORT, server_ip, time_sync.CLIENT, tdc)


ts.connect_to_server()


ts.start_client_sync()


ts.disconnect_from_server()

