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
import datetime
logfile = "stream_test_results.csv"

def log_to_file(test_num, test_series_num, stream_len, succ, num_errors, sent_stream, received_stream):
    
    file = open(logfile,'a')
    
    
    new_line = str(test_num) + ", " + str(test_series_num) + ", " + str(stream_len) + ", success: " + str(succ) + ", num errors:," + str(num_errors)+ ", Sent:, " 
    
    for s in sent_stream:
        new_line += str(s) + ", "
    
    new_line += "Received:, "
    
    for s in received_stream:
       new_line += str(s) + ", " 
    
    
    file.write(new_line + "\n")
    file.close()
    
    return

server_ip = "192.168.56.1"
tdc = tdc_wrapper.tdc_wrapper(3,0,tdc_wrapper.MODE_CLIENT,"192.168.56.1")
ts = time_sync.time_sync(james_utils.ALICE_PORT, server_ip, time_sync.CLIENT, tdc)



#log file format is num, val sent, val received, error (1 if yes), successfully deccoded (1 if yess)

count = 0

#is working and tested
#bin_size = 16000 #in ps
#bin_number = 4#can encode values between 0 and 15
#period = 64000 #in ps

#Working with 16 bins#
#bin_size = 8000 #in ps
#bin_number = 16#can encode values between 0 and 15
#period = 140000 #in ps

#Faster with 16 bins
bin_size = 8000 #in ps
bin_number = 32#can encode values between 0 and 15
period = 280000 #in ps

num_sync_pulse = 20
num_dead_pulse = 20


file = open(logfile,'a')
file.write(datetime.datetime.now().strftime("\n================\n%I:%M%p on %B %d, %Y\n"))
file.write("bin_size = " + str(bin_size) + ", bin_number = " + str(bin_number) + ", period = " + str(period) +"\n")
file.close()


res = 0
res += ts.set_bin_size(bin_size)
res += ts.set_bin_number(bin_number)
res += ts.set_period(period)
exit_test = 0
if(res):
    print("Failed to set encoding parameters, aborting..")
else:
    
    for stream_len in range(50, 2001, 50):
        
        if(exit_test):
                break
        
        for test_num in range(0, 50):
    
            if(exit_test):
                break
        
            try:
                
                print("================================================================")
                print("Test num: " + str(count) + ", series num: " + str(test_num) + ", num values: " + str(stream_len))
                
                test_stream = []
                for i in range(0, stream_len):
                    test_stream.append(random.randint(0,bin_number - 1))
                    
                    
                sent_str = "Sending: "
                for i in test_stream:
                    sent_str += str(i) + ", "
                print(sent_str)
                
                res = ts.send_stream(test_stream, num_sync_pulse, num_dead_pulse)
                if(res == -1):
                    print("Stream transmission failed, exiting")
                    exit_test = 1
                    break
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
                ers = 0
                if(len(test_stream) == len(res)):
                    for i in range(0, len(test_stream)):
                        if(test_stream[i] != res[i]):
                            succ = 0
                            ers += 1
                else:
                    succ = 0
                        
                if(succ):
                    print("Stream decoded successfully by Bob!")
                else:
                    print("Bob did not correctly decode stream, " + str(ers) + " errors")
                    
                log_to_file(count, test_num, stream_len, succ, ers, test_stream, res)
                
                count += 1
                print("Waiting 3 seconds...")
                time.sleep(3)
                
                #exit_test = 1
                
            except KeyboardInterrupt:
                print("Exiting")
                exit_test = 1
                break
            
            
ts.board.close_board()           
print("Done testing")       