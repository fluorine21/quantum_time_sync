# -*- coding: utf-8 -*-
"""
Created on Wed Aug  5 11:20:24 2020

@author: tianlab01
"""

import tdc_wrapper
import pulse_gen
import matplotlib.pyplot as plt
import time


pulses_to_send = 2000
amplitude = 0x7FFF
period = 100 #in clock cycles
channel_num = 2 #TDC channel connected to SNSPD

#Create a new TDC object
tdc = tdc_wrapper.tdc_wrapper(15, 0, tdc_wrapper.MODE_NORMAL, "")


#Create a new FPGA object
board = pulse_gen.pulse_gen("COM4")

if(board.ping_board()):
    print("Connection to board is down, aborting...")
else:
    print("Connection to board is up!")

    print("Sending " + str(pulses_to_send) + " pulses")
    
    #Set the board amplitude and period
    board.set_amplitude(amplitude)
    board.set_period(period)
    board.set_pulse_len(64)
    
    #Clear the TDC
    tdc.clear_all()
    
    #Send the pulses
    board.toggle_phase_meas(pulses_to_send)
    
    tdc.shutdown()
    
    board.close_board()
    
    #time.sleep()
    
    #Get the pulses from the TDC
    pulses = tdc.end_record(channel_num, 1)
    
    pulses.sort()
    
    print("Got " + str(len(pulses)) + " counts")
    
    diffs = []
    for i in range(0, len(pulses)-1):
        for j in range(0, len(pulses)-1):
            if(i != j):
                diffs.append(pulses[i+1] - pulses[i])
        
    avg_diff = sum(diffs)/len(diffs)
    
    print("Average difference was " + str(avg_diff/1000) +"ns")
    
    plt.hist(diffs, bins = 10000000)
    
    plt.title('Histogram of time differences between adjacent pulses')
    plt.show()
    
    
    
    
    