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
# for numpy arrays
import numpy as np
# for sleep
import time

# This code shows how to get histograms from a quTAG connected via USB.
# Additionally we are using channel delays to shift the histogram in the plot.

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
ch_stop = 1

# Let's add/remove (True/False) a histogram with specified start and stop channels.
# All time differences beween a start and the first following stop event will contribute to the histogram.
# This function also enables the calculation of start stop histograms. When enabled, all incoming events contribute to the histograms.
# When disabled, all corresponding functions are unavailable. The function implicitly clears the histograms.
qutag.addHistogram(ch_start,ch_stop,True)


# Sets parameters for the internally generated start stop histograms: bin width in ps & bin count (range = 2 ... 1000000, default = 10000)
# If the function is not called, default values are in place. When the function is called, all collected histogram data are cleared. 
qutag.setHistogramParams(1,3000)


# plotting with mathplotlib
style.use('fivethirtyeight')
fig = plt.figure()
fig.set_size_inches(10,7)
ax1 = fig.add_subplot(1,1,1)

# Array for the channel delays with zero ps. We are going to shift the delay on channel ch_start in the coming loop.
channelDelays = np.zeros(int(8), dtype=np.int32)
# Change the array for channel ch_start 1670ps, later we will set the delays via function. Array looks like: [0,0,1670,0,0,0,0,0]
# Optimized for periodical 1MHz input at channel ch_start & ch_stop
channelDelays[ch_stop] = 0 

# Let's get histograms of the device in a loop with increasing channel delay.
while True:
	# Shift the delay on channel 'ch_start' +20ps each loop by changing the created array
	channelDelays[ch_stop] += 10

	# Set the new channel delay with the created and changed array
	qutag.setChannelDelays(channelDelays)
		
	if (channelDelays[ch_stop] > 1200):
		# Reset the channel delay for plotting range
		channelDelays[ch_stop] = 0

	time.sleep(0.2)
	
	# Clear histogram data with True to avoid old data at another channel delay
	qutag.getHistogram(ch_start,ch_stop,True)
	
	# wait a second for accumulating data
	time.sleep(0.1)
	# get the histogram of channel ch_start & ch_stop and clear the data
	rc = qutag.getHistogram(ch_start,ch_stop,True)
	print("Counts inside the histogram: ", rc[1], "| Counts too Small: ", rc[2], "| Counts too Large: ", rc[3], "| max Exposure time: ", rc[6]/1000, "ns")
	
	# Plotting...
	plt.cla() # clear old plotting data
	# plot the first 1000 datapoints to 'zoom in'
	#plt.plot(rc[0])
	plt.plot(rc[0][0:1000])
	ax1.set_title('quTAG Histogram - channel delay ' + str(channelDelays[ch_stop]) + ' ps')		
	plt.pause(0.05)


# Disconnects a connected device and stops the internal event loop.
qutag.deInitialize()



