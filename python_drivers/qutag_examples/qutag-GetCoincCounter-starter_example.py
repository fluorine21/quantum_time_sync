# Example for using the Coincidence Counters with python + quTAG
#
# Author: qutools GmbH
# Last edited: Sep 2019
#
# Tested with python 3.7.3 (32bit), numpy-1.13.3 and Windows 7 (64bit)
#
# This is demo code. Use at your own risk. No warranties.
#
# It may be used and modified with no restriction; raw copies as well as 
# modified versions may be distributed without limitation.

# for sleep
import time

# This code shows how to get event rates and coincidences from a quTAG connected via USB.

# Import the python wrapper which wraps the DLL functions.
# The wrapper should be in the same directory like this code in the folder '..\QUTAG-V1.5.0\userlib\src'.
try:
        import QuTAG
except:
        print("Time Tagger wrapper QuTAG.py is not in the search path.")


# Initialize the quTAG device
qutag = QuTAG.QuTAG()

# Set the exposure time (or integration time) of the internal coincidence counters in milliseconds, range = 0...65535
qutag.setExposureTime(100) # 100 ms exposure time

# Give some time to accumulate data
time.sleep(1) # 1 second sleep time with 100ms exposure time would give ~10 times data we don't get


# Now let's retrieve the most recent values of the built-in coincidence counters from quTAG.
# The array contains count rates for all 5 channels and rates for coincidences of events detected on different channels. Events are coincident if they happen within the coincidence window (qutag.setCoincidenceWindow).
# The coincidence counters are not accumulated, i.e. the counter values for the last exposure (see setExposureTime ) are returned.
data,updates = qutag.getCoincCounters()
print("Updates since last call: ", updates, "| Data: ", data)
# updates	Output: Number of data updates by the device since the last call. Pointer may be NULL.
# data	        Output: Counter Values. The array must have at least 31 elements.
#                       The Counters come in the following channel order with single counts and coincidences:
#                       0(5), 1, 2, 3, 4, 1/2, 1/3, 2/3, 1/4, 2/4, 3/4, 1/5, 2/5, 3/5, 4/5, 1/2/3, 1/2/4, 1/3/4, 2/3/4, 1/2/5, 1/3/5, 2/3/5, 1/4/5, 2/4/5, 3/4/5, 1/2/3/4, 1/2/3/5, 1/2/4/5, 1/3/4/5, 2/3/4/5, 1/2/3/4/5 
### see 'tdcbase.h' file reference for more info: function TDC_getCoincCounters(Int32 *data, Int32 *updates)

# Disconnects a connected device and stops the internal event loop.
qutag.deInitialize()


