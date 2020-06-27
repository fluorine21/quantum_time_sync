# Example for using the Coincidence Counters with python + quTAG
#
# Author: qutools GmbH
# Last edited: Oct 2019
#
# Tested with python 3.7.3 (32bit), numpy-1.13.3 and Windows 7 (64bit)
#
# This is demo code. Use at your own risk. No warranties.
#
# It may be used and modified with no restriction; raw copies as well as 
# modified versions may be distributed without limitation.

# for sleep
import time

# This code shows how to get timestamps from a quTAG connected via USB.

# Import the python wrapper which wraps the DLL functions.
# The wrapper should be in the same directory like this code in the folder '..\QUTAG-V1.x.x\userlib\src'.
try:
        import QuTAG
except:
        print("Time Tagger wrapper QuTAG.py is not in the search path.")


# Initialize the quTAG device
qutag = QuTAG.QuTAG()



# Let's check if the device lost some data.
# Timestamps of events detected by the device can get lost if their rate is too high for the USB interface or if the PC is unable to receive the data in time.
# The quTAG recognizes this situation and signals it to the PC (with high priority).
# The function checks if a data loss situation is currently detected or if it has been latched since the last call.
# If you are only interested in the current situation, call the function twice; the first call will delete the latch.

dataloss = qutag.getDataLost()
print("dataloss: " + str(dataloss))



# The next function retrieves the timestamp values of the last n detected events on all channels.
# All timestamps are from a ring buffer with a variable buffer size.
#       The default of the buffer size at the initialization of the python wrapper is 1000000.
#       In any other usage of the DLL, use the DLL function TDC_setTimestampBufferSize (default 0 -> 0 data will be returned).
# The bool variable describes if the buffer should be cleared after retrieving the data (True).

timestamps = qutag.getLastTimestamps(True)
print("Timestamps in an array:")
print(timestamps)

# The variable timestamps show our data in an array of:
#       an array with all timestamps of the last events in base units 1 ps
#       an array with the corresponding channels, range is 0...7 for the channels 1...8
#       a variable which shows the number of the valid entries in the above arrays.
#               This may be less than the buffer size if the buffer has been cleared.
#               !!! If it is the same as the buffer size, the ring buffer is full.
#               !!! Probably, the ring buffer was overwritten by new data which was not retrieved yet.

# Disconnects a connected device and stops the internal event loop.
qutag.deInitialize()
