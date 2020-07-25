# -*- coding: utf-8 -*-
"""
Created on Fri Jul 24 13:33:35 2020

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


#is working and tested
#bin_size = 16000 #in ps
#bin_number = 4#can encode values between 0 and 15
#period = 64000 #in ps

#Faster with 16 bins
bin_size = 8000 #in ps
bin_number = 16#can encode values between 0 and 15
period = 140000 #in ps

num_sync_pulse = 20
num_dead_pulse = 20
test_stream = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]

res = 0
res += ts.set_bin_size(bin_size)
res += ts.set_bin_number(bin_number)
res += ts.set_period(period)

if(res):
    print("Failed to set encoding parameters, aborting..")
else:
                
    
    res = ts.send_stream(test_stream, num_sync_pulse, num_dead_pulse)
    if(res == -1):
        print("Stream transmission failed, exiting")
    else:
        print("Stream transmission success")
    
        sent_str = "Sent: "
        for i in test_stream:
            sent_str += str(i) + ", "
            
        res_str = "Got: "
        for i in res:
            res_str += str(i) + ", "
    
        print(sent_str)
        print(res_str)
        
        succ = 1
        if(len(test_stream) == len(res)):
            for i in range(0, len(test_stream)):
                if(test_stream[i] != res[i]):
                    succ = 0
                    break
        else:
            succ = 0
                
        if(succ):
            print("Stream decoded successfully by Bob!")
        else:
            print("Bob did not correctly decode stream")
            
        #file = open(logfile,'a')
        #new_line = str(count) + ", " + str(rand_val) + ", " + str(ret_val) + ", " + str(error) + ", " + str(succ) + "\n"
        #file.write(new_line)
        #file.close()
    
    print("Done.")
    ts.board.close_board()
        
            