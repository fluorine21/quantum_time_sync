# -*- coding: utf-8 -*-
"""
Created on Wed Jul  1 15:59:25 2020

@author: tianlab01
"""
import time
import QuTAG

class tdc_wrapper:
    
    
    timeout = 5 #in seconds
    device = 0
    
    
    def __init__(self, tt):
        
        self.timeout = tt
        
        return
    
    
    #Returns the timestamp of the first pulse seen on channel_num
    #Returns on timeout
    def wait_pulse(self, channel_num):
        
        #Open the TDC and start receiveing pulses
        self.device = QuTAG.QuTAG()
        
        time_now = time.time()
        
        ret_val = 0
        
        #While we're not out of time
        while((time.time() - time_now) > self.timeout):
            
            #Check the data loss
            d_loss = self.device.getDataLost()
            if(d_loss != 0):
                print("Warning, data loss was " + str(d_loss) + ", some timestamps have been missed")
            
            #Readback timestamps from the device
            t_s = self.device.getLastTimestamps(True)
            
            #If we didnt get any timestamps
            if(t_s[2] == 0):
                continue#keep going
            
            for i in range(0, t_s[2]):
                #If we find a timestamp of this channel
                if(t_s[1][i] == channel_num):
                    ret_val = t_s[0][i]
                    break
                    
            
        #Close the TDC
        self.device.deInitialize()    
        
        return ret_val
    
    
    
    
    