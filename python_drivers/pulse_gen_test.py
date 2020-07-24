# -*- coding: utf-8 -*-
"""
Created on Fri Jul 10 17:01:34 2020

@author: tianlab01
"""


import pulse_gen


pg = pulse_gen.pulse_gen("COM4")



#try pinging the board
if(pg.ping_board()):
    print("Failed to connect to board!")
else:
    print("Connection to board is up!")
    
#Set the period to something reasonable
pg.set_period(5)    

#List of values to send
for i in range(0,10):
    pg.load_pulse(0, i)
    
#Send the pulses with 10 leading ticks, 5 dead ticks
pg.sync_and_stream(10, 5)

