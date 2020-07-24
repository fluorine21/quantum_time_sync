# -*- coding: utf-8 -*-
"""
Created on Thu Jul 23 12:15:05 2020

@author: tianlab01
"""


import time
import time_sync
import james_utils
import tdc_wrapper
import random

server_ip = "192.168.56.1"
tdc = tdc_wrapper.tdc_wrapper(3,0,tdc_wrapper.MODE_CLIENT,"192.168.56.1")
ts = time_sync.time_sync(james_utils.ALICE_PORT, server_ip, time_sync.CLIENT, tdc)

logfile = "time_sync_stats.csv"

#log file format is num, val sent, val received, error (1 if yes), successfully deccoded (1 if yess)

count = 0

#Encoding scheme values
bin_size = 100000 #in ps
bin_number = 4#can encode values between 0 and 15
period = 2000000 #in ps

res = 0
res += ts.set_bin_size(bin_size)
res += ts.set_bin_number(bin_number)
res += ts.set_period(period)

if(res):
    print("Failed to set encoding parameters, aborting..")
elif(ts.relative_time_sync()):
    print("Relative time synchronization failed, aborting...")
else:
    print("Relative time synchronization success!")
    #Set the bin number and bin length

    while(1):
        
        try:
            
            rand_val = random.randint(0,bin_number - 1)
            
            file = open(logfile,'a')
        
            if(ts.relative_time_sync()):
                print("Relative time sync failed")
                continue
            
            ret_val = ts.send_encoded_photon(rand_val)
            
            error = 0
            if(ret_val == -1):
                error = 1
            succ = 0
            if(ret_val == rand_val):
                print("Photon decode success, sent " + str(rand_val) + ", got " + str(ret_val))
                succ = 1
            else:
                print("Photon decode failed, sent " + str(rand_val) + ", got " + str(ret_val))
           
            new_line = str(count) + ", " + str(rand_val) + ", " + str(ret_val) + ", " + str(error) + ", " + str(succ) + "\n"
            file.write(new_line)
            file.close()
            
            count += 1
            print("Waiting 5 seconds...")
            time.sleep(5)
            
        except KeyboardInterrupt:
            print("Exiting")
            break