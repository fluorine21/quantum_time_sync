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
logfile = "collected_data\stream_test_results_11_13_optical.txt"

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
bin_size = 100000 #in ps
bin_number = 4#can encode values between 0 and 15
period = 500000 #in ps
#period = 100000 #in ps

#Working with 16 bins#
#bin_size = 8000 #in ps
#bin_number = 16#can encode values between 0 and 15
#period = 140000 #in ps

#Faster with 32 bins, working
#bin_size = 8000 #in ps
#bin_number = 16#can encode values between 0 and 15
#period = 280000 #in ps

num_sync_pulse = 100
num_dead_pulse = 20

pulse_len = 16
pulse_amp = 0x7FFF

num_leading_0s = 0


file = open(logfile,'a')
file.write(datetime.datetime.now().strftime("\n================\n%I:%M%p on %B %d, %Y\n"))
file.write("bin_size = " + str(bin_size) + ", bin_number = " + str(bin_number) + ", period = " + str(period) + ", num sync pulses = " + str(num_sync_pulse) + ", pulse len (samples) = " + str(pulse_len) + ", pulse amp = " + hex(pulse_amp) + ", leading 0s = " + str(num_leading_0s) + "\n")
file.write("test num, test num for this # of photons, number of photons\n")
file.close()


res = 0
res += ts.set_bin_size(bin_size)
res += ts.set_bin_number(bin_number)
res += ts.set_period(period)
exit_test = 0

num_runs_per_len = 100
#Lists for doing analysis
len_list = []
perc_errs_list = [] #Percentage of errors in pulse decoding

if(res):
    print("Failed to set encoding parameters, aborting..")
else:
    
    #2600
    #16300
    for stream_len in range(40, 100, 10):
        
        if(exit_test):
                break
        
        
        errs_total = 0
        for test_num in range(0, num_runs_per_len):
    
            if(exit_test):
                break
        
            try:
                
                print("================================================================")
                print("Test num: " + str(count) + ", series num: " + str(test_num) + ", num values: " + str(stream_len))
                
                test_stream = []
                for i in range(0, stream_len):
                    #test_stream.append(random.randint(0,bin_number - 1))
                    if(i >= num_leading_0s):
                        test_stream.append(i%bin_number)
                    else:
                        #pad with leading 0s
                        test_stream.append(0)
                    
                    
                sent_str = "Sending: "
                for i in test_stream:
                    sent_str += str(i) + ", "
                #print(sent_str)
                
                res, a, b = ts.send_stream(test_stream, num_sync_pulse, num_dead_pulse, pulse_len, pulse_amp)
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
                    
                num_no_photon = 0
                num_neg_offset = 0
                num_bad_range = 0
                res_str = "Got: "
                for i in res:
                    if(i == james_utils.FAIL_TIMESTAMP_NEG_OFFSET):
                        num_neg_offset += 1
                    if(i == james_utils.FAIL_TIMESTAMP_NO_PHOTON):
                        num_no_photon += 1
                    if(i == james_utils.FAIL_TIMESTAMP_BAD_RANGE):
                        num_bad_range += 1
                    
                    if(i < 100):
                        res_str += str(i) + ", "
                    elif (i == james_utils.FAIL_TIMESTAMP_BAD_RANGE):
                        res_str += "br,"
                    elif (i == james_utils.FAIL_TIMESTAMP_NO_PHOTON):
                        res_str += "np,"
                    else:
                        res_str += ".,"
                print(sent_str)
                print(res_str)

                errs = len(test_stream) - james_utils.check_results(test_stream, res)
                
                print("Errors: " + str(errs))
                    
                errs_total += errs
                
                    
                log_to_file(count, test_num, stream_len, 0, errs, num_no_photon, num_bad_range, num_neg_offset, test_stream, res)
                
                count += 1
                print("Waiting 3 seconds...")
                time.sleep(3)
                
                #exit_test = 1
                
            except KeyboardInterrupt:
                print("Exiting")
                exit_test = 1
                break
            
        
        
        len_list.append(stream_len)
        perc_errs_list.append(errs_total/(stream_len*num_runs_per_len))
        
            
            
        
#Append the final results
new_line = "\n\n=================================================\nFinal results: \n num_encoded_pulses:,"
for l in len_list:
    new_line += ","+str(l)
new_line += "\n percent_error:"
for p in perc_errs_list:
    new_line += ","+str(p)
new_line += "\n=============================================\n\n"

print(new_line)
file = open(logfile,'a')
file.write(new_line + "\n")
file.close()

ts.board.close_board()           
print("Done testing")       