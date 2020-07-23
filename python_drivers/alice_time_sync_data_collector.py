# -*- coding: utf-8 -*-
"""
Created on Wed Jul 22 15:56:33 2020

@author: tianlab01
"""

import time
import time_sync
import james_utils
import tdc_wrapper

server_ip = "192.168.56.1"
tdc = tdc_wrapper.tdc_wrapper(15,0,tdc_wrapper.MODE_CLIENT,"192.168.56.1")
ts = time_sync.time_sync(james_utils.ALICE_PORT, server_ip, time_sync.CLIENT, tdc)

logfile = "time_sync_stats.csv"

count = 0

while(1):
    
    try:
        
        file = open(logfile,'a')
    
        ts.connect_to_server()
        ts.start_client_sync()
        ts.disconnect_from_server()
        
        new_line = str(count) + ", " + str(ts.time_diff) + ", " + str(ts.path_len) + "\n"
        file.write(new_line)
        file.close()
        
        count += 1
        print("Waiting 5 seconds...")
        time.sleep(5)
        
    except KeyboardInterrupt:
        print("Exiting")
        break