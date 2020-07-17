# -*- coding: utf-8 -*-
"""
Created on Fri Jul 17 12:36:30 2020

@author: tianlab01
"""


import tdc_wrapper


tdc_client = tdc_wrapper.tdc_wrapper(15,0,tdc_wrapper.MODE_CLIENT,"192.168.56.1")

ts = tdc_client.wait_pulse(0)

print("Timestamp was " + str(ts))