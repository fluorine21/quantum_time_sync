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
import james_utils
logfile = "stream_test_results.txt"

def log_to_file(test_num, test_series_num, stream_len, succ, num_errors, num_no_photon, num_bad_range, num_neg_offset, sent_stream, received_stream):
    
    file = open(logfile,'a')
    
    
    new_line = str(test_num) + ", " + str(test_series_num) + ", " + str(stream_len) + ", success:, " + str(succ) + ", num errors:," + str(num_errors)
    new_line += ", num_no_photon," + str(num_no_photon) + ", num_bad_range," + str(num_bad_range) +  ", num_neg_offset," + str(num_neg_offset)
    #new_line += ", Sent:, "
    #for s in sent_stream:
    #    new_line += str(s) + ", "
    
    #new_line += "Received:, "
    
    #for s in received_stream:
    #   new_line += str(s) + ", " 
    
    
    file.write(new_line + "\n")
    file.close()
    
    return

bob_ip = "192.168.56.1"
tdc_ip = "192.168.56.1"
tdc = tdc_wrapper.tdc_wrapper(3,0,tdc_wrapper.MODE_CLIENT,bob_ip)
ts = time_sync.time_sync(james_utils.ALICE_PORT, bob_ip, time_sync.CLIENT, tdc)



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

#Faster with 32 bins, working
bin_size = 8000 #in ps
bin_number = 16#can encode values between 0 and 15
period = 280000 #in ps

num_sync_pulse = 200
num_dead_pulse = 20

pulse_len = 16
pulse_amp = 0x7FFF


file = open(logfile,'a')
file.write(datetime.datetime.now().strftime("\n================\n%I:%M%p on %B %d, %Y\n"))
file.write("bin_size = " + str(bin_size) + ", bin_number = " + str(bin_number) + ", period = " + str(period) +"\n")
file.write("test num, test num for this # of photons, number of photons\n")
file.close()


res = 0
res += ts.set_bin_size(bin_size)
res += ts.set_bin_number(bin_number)
res += ts.set_period(period)
exit_test = 0
if(res):
    print("Failed to set encoding parameters, aborting..")
else:
    
    #2600
    #16300
    for stream_len in range(1000, 20001, 200):
        
        if(exit_test):
                break
        
        for test_num in range(0, 100):
    
            if(exit_test):
                break
        
            try:
                
                print("================================================================")
                print("Test num: " + str(count) + ", series num: " + str(test_num) + ", num values: " + str(stream_len))
                
                test_stream = []
                for i in range(0, stream_len):
                    #test_stream.append(random.randint(0,bin_number - 1))
                    test_stream.append(i%16)
                    
                    
                sent_str = "Sending: "
                for i in test_stream:
                    sent_str += str(i) + ", "
                #print(sent_str)
                
                res = ts.send_stream(test_stream, num_sync_pulse, num_dead_pulse, pulse_len, pulse_amp)
                if(res == -1):
                    print("Stream transmission failed, exiting")
                    print(sent_str)
                    exit_test = 1
                    break
                else:
                    print("Stream transmission success")
    
                sent_str = "Sent: "
                for i in test_stream:
                    sent_str += str(i) + ", "
                    
                res_str = "Got: "
                for i in res:
                    if(i < 100):
                        res_str += str(i) + ", "
                    else:
                        res_str += ".,"
                print(sent_str)
                print(res_str)

                errs = len(test_stream) - james_utils.check_results(test_stream, res)
                
                print("Errors: " + str(errs))
                    
                
                    
                #log_to_file(count, test_num, stream_len, succ, ers, num_no_photon, num_bad_range, num_neg_offset, test_stream, res)
                
                count += 1
                print("Waiting 3 seconds...")
                time.sleep(3)
                
                exit_test = 1
                
            except KeyboardInterrupt:
                print("Exiting")
                exit_test = 1
                break
            
            
ts.board.close_board()           
print("Done testing")       