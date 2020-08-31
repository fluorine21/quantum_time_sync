# -*- coding: utf-8 -*-
"""
Created on Fri Aug 28 12:16:06 2020

@author: tianlab01
"""

expected_period = 280000
expected_bin_num = 16
expected_bin_size = 8000
expected_num_sync_pulses = 200

import james_utils as ju
import matplotlib.pyplot as plt


f = open("received_pulse_streams_cw_light.txt", "r")
lines = f.readlines()

pulse_lists = []
for l in lines:
    p_str_list = l.split(",")
    pl = []
    for p in p_str_list:
        try:
            pl.append(int(p))
        except:
            print("Line end")
    pulse_lists.append(pl)
    
for pl in pulse_lists:

    decoded_vals, bin_starts, last_sync_pulse_timestamp = ju.decode_pulse_list(pl, expected_period, expected_bin_num, expected_bin_size, expected_num_sync_pulses)
    
    
    decode_str = "Decoded: "
    for d in decoded_vals:
        if(d < 20):
            decode_str += str(d) + ","
        else:
            decode_str += ".,"
            
        
    print(decode_str)
    
    
    pl_y = []
    bs_y = []
    for p in pl:
        pl_y.append(1)
        
    plt.plot(pl, pl_y, color='blue', label="Timestamps")
    plt.plot(bin_starts, bs_y, color='red', label="Bin Starts")
    plt.plot([last_sync_pulse_timestamp], [1], color='green', label="Sync end")
    
    axes = plt.gca()
    #axes.set_xlim([-1,1])
    #axes.set_ylim([-1500,1500])
    axes.legend()
    plt.xlabel('B(T)',fontsize=16)
    plt.ylabel('R(Ω)',fontsize=16)
    
    plt.show()

    print("Continue?")

    plt.clf()

            
    