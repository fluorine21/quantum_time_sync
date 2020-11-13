# Example for using the Coincidence Counters with python + quTAG
#
# Author: qutools GmbH
# Last edited: Sep 2019
#
# Tested with python 3.7.3 (32bit), Windows 7 (64bit)
#
# This is demo code. Use at your own risk. No warranties.
#
# It may be used and modified with no restriction; raw copies as well as 
# modified versions may be distributed without limitation.


# This code shows different device settings and their usage. For additional information see the documentation of TDCBase.


try:
        import QuTAG
except:
        print("Time Tagger wrapper QuTAG.py is not in the search path / same folder.")

import numpy as np


# Initialize device
qutag = QuTAG.QuTAG()

# Get the timebase (the resolution) from the quTAG. It is used as time unit by many other functions.
timebase = qutag.getTimebase()
print("Device timebase:", timebase, "s")


# Read back device parameters: coincidence window in bins (bin width is timebase) and exposuretime in ms
na, coincWin, expTime = qutag.getDeviceParams()
print("Coincidence window",coincWin, "bins, exposure time",expTime, "ms")


# Define the coincidence window	in bins of the timebase
qutag.setCoincidenceWindow(20000) # with the timebase 1e-12s -> coincidence window is set to 20ns


# Set the exposure or integration time in milliseconds, range = 0..65535
qutag.setExposureTime(500) # 500ms Counting


# Enable channels, disable the rest
# Selects the channels that contribute to the timestamp output stream.
# 0 enables the start input that doesn't trigger timestamps but may affect timestamps from other channels.
qutag.enableChannels((0,1,2,3,4)) # Enables channel 0,2,3


# Let's configure a channel with threshold voltage and rising or faling edge.
# Configure the channel: 2
# Type of signal conditioning
#       LVTTL signals (Trigger at 2V rising edge, termination optional.):       SCOND_LVTTL
#       NIM signals (Trigger at -0.6V falling edge, termination fixed on.):     SCOND_NIM
#       Misc signals (Conditioning on, everything optional.):                   SCOND_MISC
# Rising/falling edge: True/False (rising is default)
# Voltage threshold from -2...3V when signal conditioning is SIGNALCOND_MISC: 1.2V
# For additional information see the documentation of TDCBase.
qutag.setSignalConditioning(2,qutag.SCOND_MISC,False,1.2)
print("Signal Cond.", qutag.getSignalConditioning(2))

# Enable Markers.
# The markers 0-3 are low resolution timestamps triggered over the GPIO port. Marker 4 is a 1ms timer tick.
# If enabled, the markers are included in timestamp protocol files with channel numbers 100-104.
# By default, all markers are activated. The function allows to enable or disable the single marker channels. 
qutag.enableMarkers((1,2))



# Get the dead time for input channel 1
# After detecting an event, all subsequent events on the same channel are ignored for this time.
rc = qutag.getDeadTime(1)
print("Dead time channel 1:", rc, "ps")


# Set dead time for a specified input channel
# Channel 1, dead time 200 ps
rc = qutag.setDeadTime(1,200)


# Set Channel Delay Times.
# Different signal runtimes cause relative delay times of the signals at different channels.
# The function allows to configure a delay per channel that will be compensated including the changed sorting of events. If not set, all delays are 0. The compensation is carried out in hardware.
# Here we create an numpy array with channel delays [ps], Range=-100ns ... 100ns.
# The array must have at least 5 elements. Enter 0 for unused channels.
delays = np.zeros(int(8), dtype=np.int32)
delays[1] = 2001
rc = qutag.setChannelDelays(delays)

# Read back Channel Delay Times in an array.
rc = qutag.getChannelDelays()
print("Channel delay", rc)


# Check for data loss.
# Timestamps of events detected by the device can get lost if their rate is too high for the USB interface or if the PC is unable to receive the data in time.
# The TDC recognizes this situation and signals it to the PC (with high priority).
# The function checks if a data loss situation is currently detected or if it has been latched since the last call.
# If you are only interested in the current situation, call the function twice; the first call will delete the latch. 
rc = qutag.getDataLost()
print("Data loss", rc)



qutag.deInitialize()
