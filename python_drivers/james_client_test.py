# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 12:19:37 2020

@author: tianlab01
"""


import time_sync

home_ip = ""
ts = time_sync.time_sync("COM3", home_ip, time_sync.CLIENT)


ts.start_time_sync()

