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

# This code shows how to get timestamps from a quTAG connected via USB and write them into a text file.

# Import the python wrapper which wraps the DLL functions.
# The wrapper should be in the same directory like this code in the folder '..\QUTAG-V1.x.x\userlib\src'.
try:
        import QuTAG
except:
        print("Time Tagger wrapper QuTAG.py is not in the search path.")


# Initialize the quTAG device
qutag = QuTAG.QuTAG()
qutag.enableChannels((1,2,3,4))
qutag.setSignalConditioning(1, 3, 1, 0.25)
qutag.setSignalConditioning(2, 3, 1, 0.25)
qutag.setSignalConditioning(3, 3, 1, 0.25)
qutag.setSignalConditioning(4, 3, 1, 0.25)

filename = r'quTAG_timestamps.txt'


# The next function starts or stops writing the timestamp values to a file continuously.
# The timestamps written are already corrected by the detector delays, see example 'qutag-GetHistogramLoop-channelDelay-example.py'.
# Timestamps come in base units of 1 ps. The channel numbers start with 0 in binary formats, with 1 in ASCII.
# A channel number of (100 + Marker Number) is associated with marker input events.
# The 104 is a millisecond tick.
# The following file formats are available:
#    ASCII: FILEFORMAT_ASCII - Timestamp values (int base units) and channel numbers as decimal values in two comma separated columns. Channel numbers range from 1 to 8 in this format.
#    binary: FILEFORMAT_BINARY - A binary header of 40 bytes, records of 10 bytes, 8 bytes for the timestamp, 2 for the channel number, stored in little endian (Intel) byte order.
#    compressed: FILEFORMAT_COMPRESSED - A binary header of 40 bytes, records of 40 bits (5 bytes), 37 bits for the timestamp, 3 for the channel number, stored in little endian (Intel) byte order. No marker events and timer ticks are stored.
#    raw: FILEFORMAT_RAW - Like binary, but without header. Provided for backward compatiblity.



print("Recording")
# start writing Timestamps from the quTAG
qutag.writeTimestamps(filename,qutag.FILEFORMAT_ASCII)

# Give some time to accumulate data
time.sleep(5) # 1 second sleep time

# stop writing Timestamps
qutag.writeTimestamps('',qutag.FILEFORMAT_NONE)


print("Let's have a look into the file " + filename)



# Disconnects a connected device and stops the internal event loop.
qutag.deInitialize()


