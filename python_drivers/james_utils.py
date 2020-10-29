# -*- coding: utf-8 -*-
"""
Created on Thu Jul 16 14:44:28 2020

@author: tianlab01
"""


import socket
import random
import math as Math
import matplotlib as plt

#Constants for Alice and Bob
ALICE_PORT = "COM4"
BOB_PORT = "COM9"

#Channel definitions for Alice and Bob, can all be set to a single channel if you're just doing key transmission
ALICE_CHANNEL_SEND = 1
ALICE_CHANNEL_RECEIVE = 1
BOB_CHANNEL_SEND = 1
BOB_CHANNEL_RECEIVE = 1

TDC_THRESHOLD = 0.1 #100mV for SNSPDs
#TDC_THRESHOLD = 0.0 #0mV for just FPGA
TDC_CHANNEL_LIST = (1,2,3,4)

PERIOD_THRESHOLD = 0.1 #If the measured and expected periods differ by more than this fracion then decode fails
SYNC_PERIOD_THRESHOLD = 0.01#Tighter for determining which sync pulses are valid


LOG_TO_FILE = 1
logfile = "received_pulse_streams_cw_light_10_29_2020.txt"
INFER_TICK = 0 #If 1, next tick will be inferred from decoded value, do not use

#Timestamps denoting decode failiure
FAIL_TIMESTAMP_NO_PHOTON = 99999999999999
FAIL_TIMESTAMP_BAD_RANGE = 99999999999998
FAIL_TIMESTAMP_NEG_OFFSET = 99999999999997



TIMESTAMP_BYTE_LEN = 20
#Rerutns list of bytes object  
def timestamps_to_bytes(list_of_timestamps):
            
    byte_array = []
    for l in list_of_timestamps:
        res = int(l).to_bytes(TIMESTAMP_BYTE_LEN, byteorder='big', signed = False)  
        byte_array += list(res)
    return byte_array
            
#Converts a list of bytes into a list of timestamps, 20 bytes per timestamp
def bytes_to_timestamps(byte_array):
    
    #byte_array = list(b_a)
    timestamp_list = []
    
    if(len(byte_array) % 20 != 0):
        print("Error, byte array for bytes_to_timestamp was of the wrong size")
        return []
    
    for i in range(0, len(byte_array), TIMESTAMP_BYTE_LEN):
        ts_b = byte_array[i:i+TIMESTAMP_BYTE_LEN]
        res = int.from_bytes(ts_b, byteorder='big', signed = False)
        timestamp_list.append(res)
        
    return timestamp_list
    
    

#Returns -1 on fail
#Should only be called internally
def receive_timestamp(sck):
    #Receive and reconstruct the whole number
    res = receive_bytes(sck, TIMESTAMP_BYTE_LEN)
    if(res == -1 or res == -2 or res == -3):
        print("Timed out waiting for timestamp")
        return -1
    return int.from_bytes(res, byteorder='big', signed = False)

#Sends a timestamp
#Should only be called internally
def send_timestamp(sck, ts):        
    ts_bs = int(ts).to_bytes(TIMESTAMP_BYTE_LEN, byteorder='big', signed = False)        
    #Then send the number itself
    sck.send(ts_bs)        
    return

#Receives a user-defined number of bytes from an open socket c
#Returns bytestream on success
#Returns -1 on timeout
#Returns -2 on dead socket
#Returns -3 on other error
def receive_bytes(c, num_bytes):
    
    byte_res = []
                
    while(1):
        
        try:
            
            num_bytes_to_receive = num_bytes - len(byte_res)
            if(num_bytes_to_receive > 1024):
                num_bytes_to_receive = 1024
            
            #res = c.recv(1024)
            res = c.recv(num_bytes_to_receive)
            
            if(len(res) > 0):
        
                #copy all bytes into the result array
                #for b in res:
                byte_res += list(res)
                #If we have all of the bytes
                if(len(byte_res) >= num_bytes):
                    return byte_res
            else:
                print("Received an empty byte array from socket, socket is probably closed...")
                return -2
        except socket.timeout:
            #print("Timed out while waiting for bytes...")
            return -1
        #except Exception as e:
            #print("Unknown error occured while waiting for bytes")
            #return -3
        
#Used for randomly deleting pulses in dummy pulse list generation for algorithm testing
def random_percent(percent=50):
    if(percent == 0):
        return 0
    return random.randrange(100) < percent   
        
#Record for keeping track of suspected synchronization pulses
class sync_pulse:
    
    val = 0 #timestamp value
    diffs = [] #List of differences to every other possible sync pulse
    
    def __init__(self, v):
        self.val = v
        self.diffs = []
    
#Converts a value to be encoded to a coarse and fine offset used by the FPGA
def val_to_coarse_fine(val, bin_size):
    
    offset = val_to_offset(val, bin_size)
    c = Math.floor(offset / 4000)
    f = Math.floor((offset/250)%16)
    return c,f

#Converts a value to an offset in picoseconds
def val_to_offset(val, bin_size):
    
    return (val * bin_size) + (0.5 * bin_size)

#Converts an offset value from the last bin start in picoseconds to the encoded value
def offset_to_val(offset, bin_number, bin_size):
    
    if(offset > bin_number * bin_size):
        #print("Error, received photon outside of allowed range, should not happen here")
        return FAIL_TIMESTAMP_BAD_RANGE
    
    val = Math.floor(offset/bin_size)
    return val  

#Checks two keys against eachother and returns number of succesfully transmittred values
#Tries all permutations of key allignment and returns the best result
def check_results(sent, recv):
    
    correct = 0
    #loop through all offsets
    for offset in range(-1*(len(recv) - 1), len(recv)):
        #Loop through sent string
        c = 0
        for j in range(0, len(sent)):
            
            #Calculate the relative index for recv
            recv_i = j + offset
            
            
            #If we're in the correct range
            if(recv_i > -1 and recv_i < len(recv)):
                #Compare these two values and update c 
                if(sent[j] == recv[recv_i]):
                    c += 1
        if(c > correct):
            correct = c
            
    return correct 
            

#Decodes a list of pulses sourced from the TDC
#expected encoded pulses is the number of these we expect to  find
#All units in picoseconds
def decode_pulse_list(pulses, expected_period, expected_bin_num, expected_bin_size, expected_num_sync_pulses, missing_timestamp_limit = 100, look_for_entangled_pair = 0):
    
    
    #Used later on to get correct timestamp for entangled pulse
    orig_pulses = pulses.copy()
    
    print("Starting decode")
    
    #pre-thing to do is subtract out offset
    pulses.sort()
    
    ofs = pulses[0]
    for i in range(0, len(pulses)):
        pulses[i] -= ofs
    
    
    
    if(LOG_TO_FILE):
        file = open(logfile,'a')
        new_line = "period = " + str(expected_period) + ", bin_num = " + str(expected_bin_num) + "\n"
        for p in pulses:
            new_line += str(p) + ","
        file.write(new_line + "\n")
        file.close()
        #return [1], 0, 0, 0
    
    
    #Fist thing to do is figure out where the sync pulses end and encoded pulses start
    
    # max_diff = 0
    # max_diff_pos = 0
    # for i in range(0, len(pulses)-1):
    #     d = pulses[i+1] - pulses[i]
    #     if(d > max_diff):
    #         max_diff = d
    #         max_diff_pos = i
            
    # first_encoded_pulse_pos = max_diff_pos + 1;
    
    #Find the first difference between two pulses which is close to the period
    for i in range(0, len(pulses)-1):
        diff = pulses[i+1] - pulses[i]
        tol = abs((diff - expected_period))/expected_period
        if(tol < PERIOD_THRESHOLD):
            first_sync_pulse_index = i
            break
        
    end_of_sync_pulses_timestamp = pulses[first_sync_pulse_index] + (expected_period * (expected_num_sync_pulses + 3))
    
    first_encoded_pulse_pos = 0
    for i in range(0, len(pulses)):
        
        if(pulses[i] > end_of_sync_pulses_timestamp):
            first_encoded_pulse_pos = i
            break
    
    
    if(first_encoded_pulse_pos == 0):
        print("Cannot determine index of first encoded pulse, aborting")
        return [0], 0, 0, 0
    
    print("Done separating list of pulses")
    
    #Now we're going to create objects for each pulse which store a list of their time differences to every other sync pulse
    #If any pulse has two differences which are close enough to the expected period then we'll mark those as valid
    
    #Now we calculate the period based on the measured differences of the first max_diff_pos pulses
    sync_pulse_vals = pulses[0:first_encoded_pulse_pos]
    period_diffs = []
    sync_pulse_objs= []
    for i in range(0, len(sync_pulse_vals)):
        
        #Create a new object for pulse i
        spo = sync_pulse(sync_pulse_vals[i])
        for j in range(0, len(sync_pulse_vals)):
            if (j != i):
                d = abs(sync_pulse_vals[j] - sync_pulse_vals[i])
                period_diffs.append(d)
                spo.diffs.append(d)#Append this also to the list for this pulse
        #Record that pulse in our list
        sync_pulse_objs.append(spo)
                
    periods_final = []
    for p in period_diffs:
        
        #If this period is within allowable limits
        thresh = abs(p - expected_period) / expected_period 
        if(thresh < PERIOD_THRESHOLD):
            periods_final.append(p)
                
    #If we end up with no successfull period measurement
    if(len(periods_final) == 0):
        print("Error, could not identify any synchronization pulses")
        return [0], 0, 0, 0
            
    #Calculate the measured period
    measured_period = sum(periods_final) / len(periods_final)
    #adjust the bin size to match
    measured_bin_size = (measured_period/expected_period) * expected_bin_size
    
    
    print("Measured period was " + str(measured_period) + ", measured bin size was " + str(measured_bin_size))
    
    #Now go through the list of sync pulses and determine if they are valid
    valid_sync_pulses = []
    for sp in sync_pulse_objs:
        
        num_valid_diffs = 0
        
        #Loop through differences and look for those that meet threshold
        for d in sp.diffs:    
            thresh = abs(d - measured_period)/measured_period
            if(thresh < SYNC_PERIOD_THRESHOLD):
                num_valid_diffs += 1
            
        #If we have exactly two differences that meet the threshold
        if(num_valid_diffs == 2):
            #Add it to the list of valid pulses
            valid_sync_pulses.append(sp.val)
            
    #If there were no valid sync pulses then we fail
    if(len(valid_sync_pulses) < 1):
        print("Cannot decode pulse list, not enough valid sync pulses!")
        return [0], 0, 0, 0
        
    
    print("Found " + str(len(valid_sync_pulses)) + " valid sync pulses")
    #now we figure out which was the last valid pulse
    last_valid_sync_pulse = 0
    for p in valid_sync_pulses:
        if(p > last_valid_sync_pulse):
            last_valid_sync_pulse = p
            
            
    #The first encoded pulse is actually a synchrionization photon, so we're saving and returning it to the user and skipping the decode for it
    entangled_pulse_timestamp = orig_pulses[first_encoded_pulse_pos]
    
    #If this pulse is not far enough from the rest of the pulses we treat it as an encoded pulse instead
    #Or we don't care about entangled pulses
    if( (abs(entangled_pulse_timestamp - orig_pulses[first_encoded_pulse_pos+1]) < measured_period*3) or look_for_entangled_pair == 0):
        encoded_pulses = pulses[first_encoded_pulse_pos:len(pulses)]
        if(look_for_entangled_pair == 1):
            print("Unable to determine which encoded pluse was an entangled photon.")
        else:
            print("Skipped looking for entagled pair")
        entangled_pulse_timestamp = 0
    else:
        encoded_pulses = pulses[first_encoded_pulse_pos+1:len(pulses)]

    #Fail if there are no encoded pulses to decode
    if(len(encoded_pulses) < 1):
        print("Cannot decode pulse list, no encoded pulses found!")
        return [0], 0, 0, 0
    #Now we know where the last valid clock tick was, so we extrapolate to determine the start of the first bin set
    while(encoded_pulses[0] - last_valid_sync_pulse > measured_period):
        last_valid_sync_pulse += measured_period
        
        
    decoded_vals = []
    encoded_pulse_index = 0
    
    bin_start_timestamps = [last_valid_sync_pulse]
    
    
    missing_count = 0
    #While we haven't run out of pulses to decode and we haven't decoded more than the expected number
    #while(last_valid_sync_pulse < max(encoded_pulses) and encoded_pulse_index < expected_encoded_pulses):
    
    while(last_valid_sync_pulse < max(encoded_pulses) and missing_count < missing_timestamp_limit):  
        #Take care of empty bin sets here
        while(encoded_pulses[encoded_pulse_index] - last_valid_sync_pulse > measured_period and missing_count < missing_timestamp_limit):
            last_valid_sync_pulse += measured_period
            bin_start_timestamps.append(last_valid_sync_pulse)
            decoded_vals.append(FAIL_TIMESTAMP_NO_PHOTON)
            missing_count += 1
        
        
        #We always assume the first pulse here is valid
        offset = encoded_pulses[encoded_pulse_index] - last_valid_sync_pulse;
        #Append the decoded value to our next index
        v = offset_to_val(offset, expected_bin_num, measured_bin_size)
        decoded_vals.append(v)
        if(v == FAIL_TIMESTAMP_BAD_RANGE):
            missing_count += 1
        else:
            missing_count = 0
        
        
        #Figure out the next valid timestamp
        last_valid_sync_pulse += measured_period
        bin_start_timestamps.append(last_valid_sync_pulse)
        encoded_pulse_index += 1
        
        #If we're not on the last pulse
        if(encoded_pulse_index < len(encoded_pulses)):
            
            #while the next pulse is before last_valid_sync_pulse and there is a next pulse
            while(encoded_pulse_index + 1 < len(encoded_pulses) and encoded_pulses[encoded_pulse_index] < last_valid_sync_pulse):
                encoded_pulse_index += 1
                
        
        #otherwise we're done
        else:
            break
    
    return decoded_vals, bin_start_timestamps, end_of_sync_pulses_timestamp, entangled_pulse_timestamp



#Generates a dummy list of pulses used to test the decode algorithm
#period in ps
#loss rate between 0 and 100
#num dark counts is number of dark coutns to inject
#bin size in ps
def generate_pulse_list(period, num_sync, num_dead, num_bins, bin_size, vals, loss_rate, num_dark_counts):
    
    random.seed()
    
    pulse_list = [0]
    
    
    #Adding sync pulses
    for i in range(0, num_sync-1):
        pulse_list.append(pulse_list[-1] + period)
        
        
    #Time period in which we're looking to insert a pulse
    bin_ptr = pulse_list[-1] + (period * num_dead)#Adding dead pulses here
    bin_offset = bin_size / 2
    
    #Adding encoded values
    for v in vals:
        #Figure out the encoding based on current period
        encoded_val = (v * bin_size) + bin_offset + bin_ptr
        bin_ptr += period#Go to the next bin
        pulse_list.append(encoded_val)
        
    
    #Loss Function
    pulse_list_final = []
    for p in pulse_list:
        #If we sho333
        if(not random_percent(loss_rate)):
            pulse_list_final.append(p)
    
    #dark count addition
    for i in range(0, num_dark_counts):
        val = random.choice(pulse_list_final)#Get a random valid pulse
        val += random.randint(period*(-2), period*2)#Offset it by some ammmount
        pulse_list_final.append(val)#Add it back in
            
    #Make sure the timestamps are in order
    pulse_list_final.sort()
    
    return pulse_list_final




























# #pulses must be a sorted list
#     #expected encoded pulses is the number of these we expect to  find
# def decode_pulse_list(pulses, expected_period, expected_bin_num, expected_bin_size):
    
    
#     print("Starting decode")
    
#     #pre-thing to do is subtract out offset
#     pulses.sort()
    
#     ofs = pulses[0]
#     for i in range(0, len(pulses)):
#         pulses[i] -= ofs
    
    
    
#     if(LOG_TO_FILE):
#         file = open(logfile,'a')
#         new_line = ""
#         for p in pulses:
#             new_line += str(p) + ","
#         file.write(new_line + "\n")
#         file.close()
#         return [1]
    
    
#     #Fist thing to do is figure out where the sync pulses end and encoded pulses start
    
#     max_diff = 0
#     max_diff_pos = 0
#     for i in range(0, len(pulses)-1):
#         d = pulses[i+1] - pulses[i]
#         if(d > max_diff):
#             max_diff = d
#             max_diff_pos = i
            
#     first_encoded_pulse_pos = max_diff_pos + 1;
    
    
#     print("Done separating list of pulses")
    
#     #Now we're going to create objects for each pulse which store a list of their time differences to every other sync pulse
#     #If any pulse has two differences which are close enough to the expected period then we'll mark those as valid
    
#     #Now we calculate the period based on the measured differences of the first max_diff_pos pulses
#     sync_pulse_vals = pulses[0:max_diff_pos+1]
#     period_diffs = []
#     sync_pulse_objs= []
#     for i in range(0, len(sync_pulse_vals)):
        
#         #Create a new object for pulse i
#         spo = sync_pulse(sync_pulse_vals[i])
#         for j in range(0, len(sync_pulse_vals)):
#             if (j != i):
#                 d = abs(sync_pulse_vals[j] - sync_pulse_vals[i])
#                 period_diffs.append(d)
#                 spo.diffs.append(d)#Append this also to the list for this pulse
#         #Record that pulse in our list
#         sync_pulse_objs.append(spo)
                
#     periods_final = []
#     for p in period_diffs:
        
#         #If this period is within allowable limits
#         thresh = abs(p - expected_period) / expected_period 
#         if(thresh < PERIOD_THRESHOLD):
#             periods_final.append(p)
                
#     #If we end up with no successfull period measurement
#     if(len(periods_final) == 0):
#         print("Error, could not identify any synchronization pulses")
#         return []
            
#     #Calculate the measured period
#     measured_period = sum(periods_final) / len(periods_final)
#     #adjust the bin size to match
#     measured_bin_size = (measured_period/expected_period) * expected_bin_size
    
    
#     print("Measured period was " + str(measured_period) + ", measured bin size was " + str(measured_bin_size))
    
#     #Now go through the list of sync pulses and determine if they are valid
#     valid_sync_pulses = []
#     for sp in sync_pulse_objs:
        
#         num_valid_diffs = 0
        
#         #Loop through differences and look for those that meet threshold
#         for d in sp.diffs:    
#             thresh = abs(d - measured_period)/measured_period
#             if(thresh < SYNC_PERIOD_THRESHOLD):
#                 num_valid_diffs += 1
            
#         #If we have exactly two differences that meet the threshold
#         if(num_valid_diffs == 2):
#             #Add it to the list of valid pulses
#             valid_sync_pulses.append(sp.val)
            
#     #If there were no valid sync pulses then we fail
#     if(len(valid_sync_pulses) < 1):
#         print("Cannot decode pulse list, not enough valid sync pulses!")
#         return []
        
    
#     print("Found " + str(len(valid_sync_pulses)) + " valid sync pulses")
#     #now we figure out which was the last valid pulse
#     last_valid_sync_pulse = 0
#     for p in valid_sync_pulses:
#         if(p > last_valid_sync_pulse):
#             last_valid_sync_pulse = p
            
#     encoded_pulses = pulses[first_encoded_pulse_pos:len(pulses)]
#     #Fail if there are no encoded pulses to decode
#     if(len(encoded_pulses) < 1):
#         print("Cannot decode pulse list, no encoded pulses found!")
#         return []
#     #Now we know where the last valid clock tick was, so we extrapolate to determine the start of the first bin set
#     while(encoded_pulses[0] - last_valid_sync_pulse > measured_period):
#         last_valid_sync_pulse += measured_period
        
        
#     decoded_vals = []
#     encoded_pulse_index = 0
#     #While we haven't run out of pulses to decode and we haven't decoded more than the expected number
#     #while(last_valid_sync_pulse < max(encoded_pulses) and encoded_pulse_index < expected_encoded_pulses):
#     while(last_valid_sync_pulse < max(encoded_pulses)):  
#         #Take care of empty bin sets here
#         while(encoded_pulses[encoded_pulse_index] - last_valid_sync_pulse > measured_period):
#             last_valid_sync_pulse += measured_period
#             decoded_vals.append(FAIL_TIMESTAMP_NO_PHOTON)
        
        
#         #We always assume the first pulse here is valid
#         offset = encoded_pulses[encoded_pulse_index] - last_valid_sync_pulse;
#         #Append the decoded value to our next index
#         decoded_vals.append(offset_to_val(offset, expected_bin_num, measured_bin_size))
        
        
#         #Figure out the next valid timestamp
#         last_valid_sync_pulse += measured_period
#         encoded_pulse_index += 1
        
#         #If we're not on the last pulse
#         if(encoded_pulse_index < len(encoded_pulses)):
            
#             #while the next pulse is before last_valid_sync_pulse and there is a next pulse
#             while(encoded_pulse_index + 1 < len(encoded_pulses) and encoded_pulses[encoded_pulse_index] < last_valid_sync_pulse):
#                 encoded_pulse_index += 1
        
#         #otherwise we're done
#         else:
#             break
    
#     return decoded_vals
        
            