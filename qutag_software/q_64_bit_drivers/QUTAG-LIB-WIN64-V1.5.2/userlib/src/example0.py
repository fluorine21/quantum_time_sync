#*****************************************************************************
#
#  Project:        quTAG User Library
#
#  Filename:       example.cs
#
#  Purpose:        Minimal example for Python
#
#  Author:         N-Hands GmbH & Co KG
#
#*****************************************************************************
# $Id: example0.py,v 1.3 2019/11/12 17:15:09 trurl Exp $

import ctypes
import os
import time
import platform
import numpy as np

# API --------------------------------------------------------------    

class QuTAG:
            
    def __init__(self):
        # load Lib -------------------------------------------
        if (platform.system()=="Windows"):
            self.tdclib = ctypes.windll.LoadLibrary('tdcbase.dll')
            self.usblib = ctypes.windll.LoadLibrary('FTD3XX.dll')
        if (platform.system()=="Linux"):
            self.tdclib = ctypes.cdll.LoadLibrary('libtdcbase.so')

        # ------- tdcbase.h --------------------------------------------------------
        self.tdclib.TDC_getVersion.argtypes = None
        self.tdclib.TDC_getVersion.restype = ctypes.c_double
        self.tdclib.TDC_perror.argtypes = [ctypes.c_int32]
        self.tdclib.TDC_perror.restype = ctypes.c_char_p
        self.tdclib.TDC_init.argtypes = [ctypes.c_int32]
        self.tdclib.TDC_init.restype = ctypes.c_int32
        self.tdclib.TDC_deInit.argtypes = None
        self.tdclib.TDC_deInit.restype = ctypes.c_int32
        self.tdclib.TDC_setCoincidenceWindow.argtypes = [ctypes.c_int32]
        self.tdclib.TDC_setCoincidenceWindow.restype = ctypes.c_int32
        self.tdclib.TDC_setExposureTime.argtypes = [ctypes.c_int32]
        self.tdclib.TDC_setExposureTime.restype = ctypes.c_int32
        self.tdclib.TDC_getCoincCounters.argtypes = [ctypes.POINTER(ctypes.c_int32), ctypes.POINTER(ctypes.c_int32)]
        self.tdclib.TDC_getCoincCounters.restype = ctypes.c_int32

# Error Check --------------------------------------------------------------

    def perror(self,environ,returnCode):
        if (returnCode != 0):
            msg = self.tdclib.TDC_perror(returnCode)
            print("Error in %s: %s" % (environ, msg))

# Example --------------------------------------------------------------    

print("QuTAG Python Demo")
qutag = QuTAG()
rc = qutag.tdclib.TDC_init(-1)  # accept any device
qutag.perror("TDC_init", rc)

if (rc == 0):
    print("Initialized with QuTAG DLL v%f"%(qutag.tdclib.TDC_getVersion()))

    rc = qutag.tdclib.TDC_setCoincidenceWindow(20000)  # 20ns coincidence window
    qutag.perror("TDC_setCoincidenceWindow", rc)
    rc = qutag.tdclib.TDC_setExposureTime(100)
    qutag.perror("TDC_setExposureTime", rc)

    for i in range(50):
        time.sleep(0.09)
        data = np.zeros(int(31),dtype=np.int32)
        updates = ctypes.c_int32()
        rc = qutag.tdclib.TDC_getCoincCounters(data.ctypes.data_as(ctypes.POINTER(ctypes.c_int32)),ctypes.byref(updates))
        qutag.perror("TDC_getCoincCounters", rc)
        if (updates.value > 1 and i > 0):
            print("Missed ", updates.value-1, "updates")
        if (updates.value > 0):
            print("1:", data[1], " 2:", data[2], " 3:", data[3], "   1-2:", data[5], " 1-3:", data[6], " 1-2-3:", data[15])
	
    # deinitialize device
    rc = qutag.tdclib.TDC_deInit()
    qutag.perror("TDC_deInit", rc)
