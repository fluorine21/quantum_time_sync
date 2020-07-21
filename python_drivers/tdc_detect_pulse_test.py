# -*- coding: utf-8 -*-
"""
Created on Tue Jul 21 11:38:33 2020

@author: tianlab01
"""

import QuTAG
import time

channel_num = 1 #Channel on which to look for pulse


device = QuTAG.QuTAG()
device.enableChannels((1,2,3,4))
device.setSignalConditioning(1, 3, 1, 0.00)
device.setSignalConditioning(2, 3, 1, 0.00)
device.setSignalConditioning(3, 3, 1, 0.00)
device.setSignalConditioning(4, 3, 1, 0.00)

print("Searching for timestamp on channel #" + str(channel_num))


while(1):
#Check the data loss
    
    try:
    
        #time.sleep(1)
    
        d_loss = device.getDataLost()
        if(d_loss != 0):
            print("Warning, data loss was " + str(d_loss) + ", some timestamps have been missed")
        
        #Readback timestamps from the device
        t_s = device.getLastTimestamps(True)
        
        #If we didnt get any timestamps
        if(t_s[2] == 0):
            #print("Empty")
            continue#keep going
        
        for i in range(0, t_s[2]):
            #If we find a timestamp of this channel
            if(t_s[1][i] != 104):
                ret_val = t_s[0][i]
                print("Timestamp found for channel #" + str(t_s[1][i]) + ", timestamp was: " + str(ret_val))
                
                
    except KeyboardInterrupt:

         print("TDC interrupted by user, exiting...")
         break
           
            



device.deInitialize()           
            