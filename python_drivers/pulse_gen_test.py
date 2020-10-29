# -*- coding: utf-8 -*-
"""
Created on Fri Jul 10 17:01:34 2020

@author: tianlab01
"""


import pulse_gen
import time

pg = pulse_gen.pulse_gen("COM4")


#minbias 3.94V


#try pinging the board
if(pg.ping_board()):
    print("Failed to connect to board!")
else:
    print("Connection to board is up!")
    
#Set the period to something reasonable
pg.set_period(200)   
#pg.set_amplitude(0x1FFF)
pg.set_amplitude(0x7FFF)  
pg.set_pulse_len(16)


#List of values to send
#for j in range(0, 2):
#    for i in range(0,15):
#        pg.load_pulse(j, i)
    
#Send the pulses with 10 leading ticks, 5 dead ticks
#pg.sync_and_stream(5, 5)


print("Blasting...")

# while(1):
    
#     try:
#         pg.toggle_phase_meas(65535)
#         #time.sleep(0.5)
#     except:
#         print("exiting...")
#         break

#res = pg.get_busy()

#print("Busy w/o phase meas was: " + str(res))

#pg.toggle_phase_meas(65535)

pg.phase_meas_on()

#res = pg.get_busy()

#print("Busy w/ phase meas was: " + str(res))


time.sleep(5)

pg.phase_meas_off()

pg.close_board()