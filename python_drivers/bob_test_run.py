# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 11:53:50 2020

@author: tianlab01
"""


import time_sync
import james_utils
import tdc_wrapper

tdc = tdc_wrapper.tdc_wrapper(15,0,tdc_wrapper.MODE_CLIENT,"192.168.56.1")
home_ip = ""
ts = time_sync.time_sync(james_utils.BOB_PORT, home_ip, time_sync.SERVER, tdc)

ts.start_server()

