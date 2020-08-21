# -*- coding: utf-8 -*-
"""
Created on Thu Aug 20 15:19:05 2020

@author: tianlab01
"""


import james_utils as ju
import random


num_sync = 20
num_dead = 5
loss_rate = 20
num_dark_counts = 0

bin_size = 100 #in ps
bin_number = 16#can encode values between 0 and 15
period = 2000 #in ps

#range of stuff to decode

for stream_len in range(5, 1000):
    
    #Generate the test stream
    test_stream = []
    for i in range(0, stream_len):
        test_stream.append(random.randint(0,bin_number - 1))
        
    #Encode the test stream
    pulse_list = ju.generate_pulse_list(period, num_sync, num_dead, bin_number, bin_size, test_stream, loss_rate, num_dark_counts)
    
    
    #decode the test stream
    decoded_stream = ju.decode_pulse_list(pulse_list, period, bin_number, bin_size)
    
    sent_str = "Sent: "
    for i in test_stream:
        sent_str += str(i) + ", "
        
    res_str = "Got: "
    for i in decoded_stream:
        res_str += str(i) + ", "
        
    print(sent_str)
    print(res_str)
        
    
    if(len(decoded_stream) == len(test_stream)):
        errors = 0
        for i in range(0, len(decoded_stream)):
            if(decoded_stream[i] != test_stream[i]):
                errors += 1
        print(str(errors) + " errors found for this stream")
    else:
        print("Decode failed, lengths were not the same")
        
    


