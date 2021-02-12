# -*- coding: utf-8 -*-
"""
Created on Thu Aug 20 15:19:05 2020

@author: tianlab01
"""

import datetime
import james_utils as ju
import random
import time

logfile = "decode_test_results_2_10.txt"
def log_to_file(test_num, stream_len, loss_rate, num_dark_counts, errs):
    file = open(logfile,'a')
    new_line = str(test_num) + "," + str(stream_len) + "," + str(loss_rate) + "," + str(num_dark_counts) + "," + str(errs)
    file.write(new_line + "\n")
    file.close()
    return

num_sync = 100
num_dead = 20
#loss_rate = 20
#num_dark_counts = 0

bin_size = 100000 #in ps
bin_number = 4#can encode values between 0 and 15
period = 500000 #in ps

file = open(logfile,'a')
file.write(datetime.datetime.now().strftime("\n================\n%I:%M%p on %B %d, %Y\n"))
file.write("test number, stream length, loss rate (%), number of dark counts, errors\n")
file.close()

for loss_rate in range(0, 90, 5):
    for num_dark_counts in range(0, 1000, 20):
        for stream_len in range(5, 1000, 25):
            
            for test_num in range(0, 100):
            
                #Generate the test stream
                test_stream = []
                for i in range(0, stream_len):
                    test_stream.append(random.randint(0,bin_number - 1))
                    
                #Encode the test stream
                pulse_list = ju.generate_pulse_list(period, num_sync, num_dead, bin_number, bin_size, test_stream, loss_rate, num_dark_counts)
                
                
                #decode the test stream
                decoded_stream,a,b,c,d = ju.decode_pulse_list(pulse_list, period, bin_number, bin_size, num_sync)
                
                sent_str = "Sent: "
                for i in test_stream:
                    sent_str += str(i) + ", "
                    
                res_str = "Got: "
                for i in decoded_stream:
                    res_str += str(i) + ", "
                    
                #print(sent_str)
                #print(res_str)
                    
                
                errs = len(test_stream) - ju.check_results(test_stream, decoded_stream)
                
                print("Stream_len: " + str(stream_len) + ", num_dark_counts: " + str(num_dark_counts) + ", loss_rate:, " + str(loss_rate))
                print("Errors: " + str(errs))
                
                log_to_file(test_num, stream_len, loss_rate, num_dark_counts, errs)
            
                #time.sleep(3)


