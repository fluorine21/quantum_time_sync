# -*- coding: utf-8 -*-
"""
Created on Tue Jun 30 16:00:14 2020

@author: tianlab01
"""


# for sleep
import time

# This code shows how to get timestamps from a quTAG connected via USB and write them into a text file.

# Import the python wrapper which wraps the DLL functions.
# The wrapper should be in the same directory like this code in the folder '..\QUTAG-V1.x.x\userlib\src'.

import QuTAG

        
# Initialize the quTAG device
qutag = QuTAG.QuTAG()

filename = r'quTAG_timestamps.txt'

#disable all markers
#qutag.enableMarkers((1,2))

qutag.enableChannels((0, 1, 2, 3))

#check for lost timestamps
rc = qutag.getDataLost()
print("Data loss", rc)


# start writing Timestamps from the quTAG
qutag.writeTimestamps(filename,qutag.FILEFORMAT_ASCII)

# Give some time to accumulate data
time.sleep(1) # 1 second sleep time

# stop writing Timestamps
qutag.writeTimestamps('',qutag.FILEFORMAT_NONE)


print("Let's have a look into the file " + filename)


qutag.deInitialize()
