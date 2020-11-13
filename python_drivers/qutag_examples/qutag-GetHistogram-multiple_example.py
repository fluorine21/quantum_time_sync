# Example for using the Coincidence Counters with python + quTAG
#
# Author: qutools GmbH
# Last edited: Mai 2020
#
# Tested with python 3.7 (32bit), numpy-1.13.3 and Windows 7 (64bit)
#
# This is demo code. Use at your own risk. No warranties.
#
# It may be used and modified with no restriction; raw copies as well as 
# modified versions may be distributed without limitation.

# for plotting
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib import style

# for sleep
import time


# This code shows how to get histograms from a quTAG connected via USB.
# Additionally we are plotting the data with matplotlib.

# Import the python wrapper which wraps the DLL functions.
# The wrapper should be in the same directory like this code in the folder '..\QUTAG-V1.5.0\userlib\src'.
try:
        import QuTAG
except:
        print("Time Tagger wrapper QuTAG.py is not in the search path.")

# initialize device
qutag = QuTAG.QuTAG()

# Choose our start and stop channels for both histograms
ch_start_1 = 3
ch_stop_1 = 2

ch_start_2 = 3
ch_stop_2 = 1

ch_start_3 = 2
ch_stop_3 = 1

ch_start_4 = 4
ch_stop_4 = 1


### Let's add/remove (True/False) a histogram with specified start and stop channels.
# All time differences beween a start and the first following stop event will contribute to the histogram.
### This function also enables the calculation of start stop histograms ( qutag.enableStartStop(True) ). When enabled, all incoming events contribute to the histograms.
# When disabled ( qutag.enableStartStop(False) ), all corresponding functions are unavailable. The function implicitly clears the histograms.
qutag.addHistogram(ch_start_1,ch_stop_1,True)
# Now add the other histograms
qutag.addHistogram(ch_start_2,ch_stop_2,True)
qutag.addHistogram(ch_start_3,ch_stop_3,True)
qutag.addHistogram(ch_start_4,ch_stop_4,True)


# Let's set parameters for the internally generated start stop histograms: bin width in ps & bin count (range = 2 ... 1000000, default = 10000)
# If the function is not called, default values are in place. When the function is called, all collected histogram data are cleared.
qutag.setHistogramParams(1,4000)


### Let's freeze the buffers, empty both histograms and start both histograms recording by defreezing the buffers at the same time.

# Freeze buffers:
qutag.freezeBuffers(True)
### The function freezeBuffers(bool) can be used to freeze the internal buffers, allowing to retrieve multiple histograms with the same integration time.
# When frozen, no more events are added to the built-in histograms and timestamp buffer. The coincidence counters are not affected.
# Initially, the buffers are not frozen. All types of histograms calculated by software are affected.


# Empty histograms:
# Clear the data after retrieving the histograms with True, the next two lines simply clear the histograms successively
qutag.getHistogram(ch_start_1,ch_stop_1,True)
qutag.getHistogram(ch_start_2,ch_stop_2,True)
qutag.getHistogram(ch_start_3,ch_stop_3,True)
qutag.getHistogram(ch_start_4,ch_stop_4,True)

# Now the histograms are empty, let's start recording by defreezing the buffers
qutag.freezeBuffers(False)

# Wait a second for accumulating the data
time.sleep(1)


# Freeze the buffers to stop recording and retrieve the histograms successively
qutag.freezeBuffers(True)


### Get the histograms
rc_1 = qutag.getHistogram(ch_start_1,ch_stop_1,True)
rc_2 = qutag.getHistogram(ch_start_2,ch_stop_2,True)
rc_3 = qutag.getHistogram(ch_start_3,ch_stop_3,True)
rc_4 = qutag.getHistogram(ch_start_4,ch_stop_4,True)
# Returns an array with:
#       data array with at least binCount elements, see plotting
#       Total number of time differences in the histogram
#       Number of time diffs that were smaller than the smallest histogram bin.
#       Number of time diffs that were bigger than the biggest histogram bin.
#       Number of events on the start channel contributing to the histogram.
#       Number of events on the stop channel contributing to the histogram.
#       Total exposure time for the histogram: the time difference between the first and the last event that contribute to the histogram. In timebase units.

print("Counts inside the histogram: ", rc_1[1], "| Counts too Small: ", rc_1[2], "| Counts too Large: ", rc_1[3], "| starts: ", rc_1[4], "| stops: ", rc_1[5], "| max exposure time: ", rc_1[6]/1000, "ns")
print("Counts inside the histogram: ", rc_2[1], "| Counts too Small: ", rc_2[2], "| Counts too Large: ", rc_2[3], "| starts: ", rc_2[4], "| stops: ", rc_2[5], "| max exposure time: ", rc_2[6]/1000, "ns")
print("Counts inside the histogram: ", rc_3[1], "| Counts too Small: ", rc_3[2], "| Counts too Large: ", rc_3[3], "| starts: ", rc_3[4], "| stops: ", rc_3[5], "| max exposure time: ", rc_3[6]/1000, "ns")
print("Counts inside the histogram: ", rc_4[1], "| Counts too Small: ", rc_4[2], "| Counts too Large: ", rc_4[3], "| starts: ", rc_4[4], "| stops: ", rc_4[5], "| max exposure time: ", rc_4[6]/1000, "ns")



# If the counts are too small or too large, individual channels can be delayed by the following function. Put it of course above the code for recording.
'''
# Create an array for the channel delays with zero ps for all channels. 
import numpy as np
channelDelays = np.zeros(int(8), dtype=np.int32)
# Change the array for one channel in ps, e.g.: [0,0,1670,0,0,0,0,0]
# The range for the delay is -100ns ... 100ns
channelDelays[2] = 1670
# Then we set all the channel delays via the created array:
qutag.setChannelDelays(channelDelays)
'''



# Plotting with mathplotlib
style.use('fivethirtyeight')
fig = plt.figure()
fig.set_size_inches(10,7)
ax1 = fig.add_subplot(1,1,1)
plt.cla() # clear old plotting data
# plot the datapoints
plt.plot(rc_1[0], label='Histogram Ch: %i-%i' %(ch_start_1, ch_stop_1))
plt.plot(rc_2[0], label='Histogram Ch: %i-%i' %(ch_start_2, ch_stop_2))
plt.plot(rc_3[0], label='Histogram Ch: %i-%i' %(ch_start_3, ch_stop_3))
plt.plot(rc_4[0], label='Histogram Ch: %i-%i' %(ch_start_4, ch_stop_4))
ax1.set_title('quTAG Histograms')
plt.xlabel('Time delta [ps]')
plt.ylabel('Events [ ]')

handles, labels = ax1.get_legend_handles_labels()
ax1.legend(handles, labels)

plt.pause(0.05)

# Disconnect the device and free the USB connection.
qutag.deInitialize()
