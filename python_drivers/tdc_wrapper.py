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
        
        if(self.device):
            print("Error, cannot call wait_pulse while recording, exiting")
            return -1
        
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
        
        self.device = 0
        
        return ret_val
    
    def start_record(self):
        
        if(self.device):
            print("Error, cannot call this function while TDC is active!")
            return -1
        
        #Open the TDC and start receiveing pulses
        self.device = QuTAG.QuTAG()
        
        return 0
    
    #Returns timestamp from that channel\
    #0 if not found
    #-1 if nothing found
    def end_record(self, channel_num):
        
        ret_val = 0
        
        #Check the data loss
        d_loss = self.device.getDataLost()
        if(d_loss != 0):
            print("Warning, data loss was " + str(d_loss) + ", some timestamps have been missed")
        
        #Readback timestamps from the device
        t_s = self.device.getLastTimestamps(True)
        
        #If we didnt get any timestamps
        if(t_s[2] == 0):
            print("No timestampe recieved after record!")
            ret_val -1
        else:
            for i in range(0, t_s[2]):
                #If we find a timestamp of this channel
                if(t_s[1][i] == channel_num):
                    ret_val = t_s[0][i]
                    
        #Close the TDC
        self.device.deInitialize()    
        
        self.device = 0
        return ret_val
        
        
        
    
        
    