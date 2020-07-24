# -*- coding: utf-8 -*-
"""
Created on Fri Jul 24 11:14:53 2020

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

num_sync_pulse = 10
num_dead_pulse = 5
test_stream = [0, 1, 2, 3]

res = 0
res += ts.set_bin_size(bin_size)
res += ts.set_bin_number(bin_number)
res += ts.set_period(period)

if(res):
    print("Failed to set encoding parameters, aborting..")
else:
    
    while(1):
        
        try:
            
            #rand_val = random.randint(0,bin_number - 1)
            
            
            res = ts.send_stream(test_stream, num_sync_pulse, num_dead_pulse)
            if(res == -1):
                print("Stream transmission failed, exiting")
                break
            else:
                print("Stream transmission success")

            sent_str = "Sent: "
            for i in test_stream
                sent_str += str(i) + ", "
                
            res_str = "Got: "
            for i in test_stream
                sent_str += str(i) + ", "

            print(sent_str)
            print(res_str)
                
            #file = open(logfile,'a')
            #new_line = str(count) + ", " + str(rand_val) + ", " + str(ret_val) + ", " + str(error) + ", " + str(succ) + "\n"
            #file.write(new_line)
            #file.close()
            
            count += 1
            print("Waiting 5 seconds...")
            time.sleep(5)
            
        except KeyboardInterrupt:
            print("Exiting")
            break