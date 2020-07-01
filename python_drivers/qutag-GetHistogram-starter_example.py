# Example for using the Coincidence Counters with python + quTAG
#
# Author: qutools GmbH
# Last edited: Sep 2019
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

# Choose our start and stop channel
ch_start = 2
ch_stop = 3

### Let's add/remove (True/False) a histogram with specified start and stop channels.
# All time differences beween a start and the first following stop event will contribute to the histogram.
### This function also enables the calculation of start stop histograms ( qutag.enableStartStop(True) ). When enabled, all incoming events contribute to the histograms.
# When disabled ( qutag.enableStartStop(False) ), all corresponding functions are unavailable. The function implicitly clears the histograms.
qutag.addHistogram(ch_start,ch_stop,True)


# Wait a second for accumulating new data
time.sleep(1)


### Get the histogram of channel ch_start & ch_stop and clear the data with True
rc = qutag.getHistogram(ch_start,ch_stop,True)
# Returns an array with:
#       data array with at least binCount elements
#       Total number of time differences in the histogram
#       Number of time diffs that were smaller than the smallest histogram bin
#       Number of time diffs that were bigger than the biggest histogram bin.
#       Number of events on the start channel contributing to the histogram.
#       Number of events on the stop channel contributing to the histogram.
#       Total exposure time for the histogram: the time difference between the first and the last event that contribute to the histogram. In timebase units.

print("Counts inside the histogram: ", rc[1], "| Counts too Small: ", rc[2], "| Counts too Large: ", rc[3], "| starts: ", rc[4], "| stops: ", rc[5], "| max exposure time: ", rc[6]/1000, "ns")


# Plotting with mathplotlib
style.use('fivethirtyeight')
fig = plt.figure()
fig.set_size_inches(10,7)
ax1 = fig.add_subplot(1,1,1)
plt.cla() # clear old plotting data
# plot the datapoints
plt.plot(rc[0])
ax1.set_title('quTAG Histogram')		
plt.pause(0.05)

# Disconnects a connected device and stops the internal event loop.
qutag.deInitialize()
