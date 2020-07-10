# -*- coding: utf-8 -*-
"""
Created on Fri Jul 10 17:01:34 2020

@author: tianlab01
"""


import pulse_gen


pg = pulse_gen.pulse_gen("COM4")

#pg.open_board()

#try pinging the board
if(pg.ping_board()):
    print("Failed to connect to board!")
else:
    print("Connection to board is up!")
    
#turn on phase measurement mode to get something on the stream output
pg.phase_meas_off()
    
#pg.close_board()