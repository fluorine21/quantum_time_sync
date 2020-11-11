# -*- coding: utf-8 -*-
"""
Created on Fri Aug 28 12:16:06 2020

@author: tianlab01
"""


#expected_period = 500000
expected_period = 653059
#expected_period = 360000
expected_bin_num = 4
expected_bin_size = 16000
expected_num_sync_pulses = 100

import james_utils as ju
import matplotlib.pyplot as plt
import mplcursors


f = open("pulse_stream_test.txt", "r")
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

   
    pl_dupe = pl.copy()
    
    decoded_vals, bin_starts, last_sync_pulse_timestamp, entangled_timestamp, valid_sync_pulse_timestamps = ju.decode_pulse_list(pl, expected_period, expected_bin_num, expected_bin_size, expected_num_sync_pulses)
 
    decode_str = "Decoded: "
    for d in decoded_vals:
        if(d < 20):
            decode_str += str(d) + ","
        elif (d == ju.FAIL_TIMESTAMP_BAD_RANGE):
            decode_str += "br,"
        elif (d == ju.FAIL_TIMESTAMP_NO_PHOTON):
            decode_str += "np,"
        else:
            decode_str += ".,"
            
        
    print(decode_str)
    
    
    pl = ju.remove_duplicate_pulses(pl, expected_period)
    
    #pl = pl_dupe
    
    first_small_delay = 0
    sec = 0
    consecutives = 0
    pl.sort()
    for i in range(0, len(pl)-1):
        if(consecutives > 3):
            print("Pulses start at i = " + str(i))
            first_small_delay = pl[i]
            sec = pl[i+1]
            break
        if(abs(pl[i+1] - pl[i]) < expected_period*3):
            consecutives += 1
        else:
            consecutives = 0
            
    print("Diff was " + str(sec - first_small_delay))
    pl_y = []
    bs_y = []
    vspt = []
    for p in pl:
        pl_y.append(1)
      
    if(len(decode_str) > 20):
        for b in bin_starts:
            bs_y.append(1)
            
        for v in valid_sync_pulse_timestamps:
            vspt.append(1)
        
    fig = plt.figure()
    plt.scatter(pl, pl_y, color='blue', label="Timestamps")
    plt.scatter([first_small_delay, sec], [1,1], color='black', label="First Small Delay")
    if(len(decode_str) > 20):
        plt.scatter(bin_starts, bs_y, color='red', label="Bin Starts")
        plt.scatter(valid_sync_pulse_timestamps, vspt, color='orange', label="Valid Sync Pulses")
        plt.scatter([last_sync_pulse_timestamp], [1], color='green', label="Sync end")
    
    axes = plt.gca()
    #axes.set_xlim([-1,1])
    #axes.set_ylim([-1500,1500])
    axes.legend()
    #plt.xlabel('B(T)',fontsize=16)
    #plt.ylabel('R(Ω)',fontsize=16)
    #fig.canvas.mpl_connect('motion_notify_event', on_plot_hover)
    mplcursors.cursor(hover=True)
    plt.show()

    #a = input("Continue?")
    
    

    #plt.clf()
    break

            
    