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

# for plotting
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from matplotlib import style
# for sleep
import time

# This code shows how to get event rates and coincidences from a quTAG connected via USB.
# Additionally we are plotting the data "live" with matplotlib.

# Import the python wrapper which wraps the DLL functions.
# The wrapper should be in the same directory like this code in the folder '..\QUTAG-V1.5.0\userlib\src'.
try:
        import QuTAG
except:
        print("Time Tagger wrapper QuTAG.py is not in the search path.")


# Initialize the quTAG device
qutag = QuTAG.QuTAG()


# Read back device parameters: coincidence window in bins (bin width corresponds to timebase) and exposuretime in ms
# We use the exposure time for the y-axis in the plot 
na, coincWin, expTime = qutag.getDeviceParams()
print("Coincidence window",coincWin, "bins, exposure time",expTime, "ms")


# Init plotting with mathplotlib
style.use('fivethirtyeight')
fig = plt.figure()
fig.set_size_inches(10,7)
subplt = fig.add_subplot(1,1,1)

# Variables for the printed channels in the plot
channel_plot1 = 1 # quTAG channel 1
channel_plot2 = 2

# Arrays for saving data for plotting
xs1 = []
ys1 = []
xs2 = []
ys2 = []

# Increment in loop for plotting when new data comes from quTAG
newdata = 0

# Let's get count rates and coincidences of the device in a loop for plotting.
for i in range(1000):
	time.sleep(0.1)

	# Get the data from quTAG.
	data,updates = qutag.getCoincCounters()
	print("Data: ", data)
	# updates	Output: Number of data updates by the device since the last call. Pointer may be NULL.
	# data	        Output: Counter Values. The array must have at least 31 elements.
	#                       The Counters come in the following channel order with single counts and coincidences:
	#                       0(5), 1, 2, 3, 4, 1/2, 1/3, 2/3, 1/4, 2/4, 3/4, 1/5, 2/5, 3/5, 4/5, 1/2/3, 1/2/4, 1/3/4, 2/3/4, 1/2/5, 1/3/5, 2/3/5, 1/4/5, 2/4/5, 3/4/5, 1/2/3/4, 1/2/3/5, 1/2/4/5, 1/3/4/5, 2/3/4/5, 1/2/3/4/5 
	### see 'tdcbase.h' file reference for more info: function TDC_getCoincCounters(Int32 *data, Int32 *updates)

	
	if (updates == 0):
                # No new data...
		print("waiting for new data...")
	else:
                # Push the countrates of channel 1 & 2 in arrays for plotting...
		newdata += 1
		xs1.append(newdata*expTime/500)
		ys1.append(data[channel_plot1])
		xs2.append(newdata*expTime/500)
		ys2.append(data[channel_plot2])
		# Plotting...
		plt.cla()
		subplt.set_title('quTAG count rates')
		plt.xlabel('Time [s]')
		plt.ylabel('Countrate [1/' + str(expTime/1000) +'s]')
		
		# Let's remove old data from the plotting array, so only e.g. the last 30 datapoints are plotted
		if (len(xs1) > 30):
			xs1.pop(0)
			ys1.pop(0)
			xs2.pop(0)
			ys2.pop(0)

		
		plt.plot(xs1,ys1, '-', label="Ch " + str(channel_plot1))
		plt.plot(xs2,ys2, '--', label="Ch " + str(channel_plot2))
		plt.legend()
		plt.pause(0.01)


# Disconnects a connected device and stops the internal event loop.
qutag.deInitialize()


