# quTAG device wrapper
#
# Author: qutools GmbH
# Last edited: Sep 2019
#
# Tested with python3 and Windows 10 (32bit)
#
# This is demo code. Use at your own risk. No warranties.
#
# It may be used and modified with no restriction; raw copies as well as 
# modified versions may be distributed without limitation.

import ctypes
import os

try:
        import numpy as np
except:
        print("The wrapper QuTAG.py needs numpy for arrays, please install.")


class QuTAG:
    # ----------------------------------------------------
    # lifetime histogram structure
    class TDC_LftFunction(ctypes.Structure):
        _fields_= [
            ('capacity',ctypes.c_int32),
            ('size',ctypes.c_int32),
            ('binWidth',ctypes.c_int32),
            ('values',ctypes.c_double)]
    
    # hbt histogram structure
    class TDC_HbtFunction(ctypes.Structure):
        _fields_= [
            ('capacity',ctypes.c_int32),
            ('size',ctypes.c_int32),
            ('binWidth',ctypes.c_int32),
            ('indexOffset',ctypes.c_int32),
            ('values',ctypes.c_double)]
            
    def __init__(self):
        # load DLL -------------------------------------------
        dll_name = 'tdcbase.dll'
        usbdll_name= 'FTD3XX.dll'
        #dir_wrapper = os.getcwd()
        #os.chdir("..")
        #dir_parent = os.getcwd()
        #os.chdir(dir_parent+'/lib/')
        self.qutools_usbdll = ctypes.windll.LoadLibrary(usbdll_name) # only needed for quTAG 
        self.qutools_dll = ctypes.windll.LoadLibrary(dll_name)
        #print(dir_wrapper)
        #os.chdir(dir_wrapper)
        

        self.declareAPI()
        self.dev_nr=-1
        
        self.Initialize()
        
        self._bufferSize = 1000000
        self.setBufferSize(self._bufferSize)
        
        self._deviceType = self.getDeviceType()
        self._timebase = self.getTimebase()

        self._StartStopBinCount = 100000
        
        self._featureHBT = self.checkFeatureHBT()
        self._featureLifetime = self.checkFeatureLifetime()
        
        self._HBTBufferSize = 256
        self._LFTBufferSize = 256
        
        #print("Found "+self.devtype_dict[self._deviceType]+" device.")
        
        # Get infos about device
        devType = self._deviceType
        if (devType == self.DEVTYPE_QUTAG):
                print("Found "+self.devtype_dict[self._deviceType]+" device.")
        else:
                print("No suitable device found - demo mode activated")
        
        print("Initialized with QuTAG DLL v%f"%(self.getVersion()))

    def declareAPI(self):
        """Declare the API of the DLL. Should not be executed from the user."""
        # ------- tdcbase.h --------------------------------------------------------
        self.TDC_QUTAG_CHANNELS = 5
        self.TDC_COINC_CHANNELS = 31
        self.TDC_MAX_CHANNEL_NO = 20
        
        # Device types ---------------------------------------
        self.devtype_dict = { 0: 'DEVTYPE_QUTAG', 
            1: 'DEVTYPE_NONE'}
        self.DEVTYPE_QUTAG = 0 # quTAG
        self.DEVTYPE_NONE = 1  # simulated device
        
        # (Output) Fileformats ----------------------------------------
        self.fileformat_dict = { 0: 'ASCII', # ASCII format
            1: 'BINARY', # uncompressed binary format (40B header, 10B/time tag)
            2: 'COMPRESSED', # compressed binary format (40B header, 5B/time tag)
            3: 'RAW', # uncompressed binary without header (for compatibility)
            4: 'NONE' }
            
        self.FILEFORMAT_ASCII = 0
        self.FILEFORMAT_BINARY = 1
        self.FILEFORMAT_COMPRESSED=2
        self.FILEFORMAT_RAW = 3
        self.FILEFORMAT_NONE = 4
        # Signal conditioning --------------------------------
        self.signalcond_dict = { 1: 'LVTTL', # for LVTTL signals: Trigger at 2V rising edge
            2: 'NIM', # for NIM signals: Trigger at -0.6V falling edge
            3: 'MISC', # other signal type: conditioning on, everything optional
            4: 'NONE'}
        
        self.SCOND_LVTTL = 1
        self.SCOND_NIM = 2
        self.SCOND_MISC = 3
        self.SCOND_NONE = 4
        # Type of generated timestamps ----------------------------
        self.simtype_dict = { 0: 'FLAT', # time diffs and channels numbers uniformly ditributed
            1: 'NORMAL', # time diffs normally distributed, channels uniformly
            2: 'NONE'}
        
        self.SIMTYPE_FLAT = 0
        self.SIMTYPE_NORMAL = 1
        self.SIMTYPE_NONE = 2
        
        # Error types (tdcdecl.h) ----------------------------------------
        self.err_dict = {-1: 'unspecified error',
            0 : 'No error', 
            1 : 'Receive timed out', 
            2 : 'No connection was established',
            3 : 'Error accessing the USB driver',
            4 : 'Unknown Error',
            5 : 'Unknown Error',
            6 : 'Unknown Error',
            7 : 'Can''t connect device because already in use',
            8 : 'Unknown error',
            9 : 'Invalid device number used in call',
            10 : 'Parameter in fct. call is out of range',
            11 : 'Failed to open specified file',
            12 : 'Library has not been initialized',
            13 : 'Requested Feature is not enabled',
            14 : 'Requested Feature is not available'}
        
        # function definitions
        self.qutools_dll.TDC_getVersion.argtypes = None
        self.qutools_dll.TDC_getVersion.restype = ctypes.c_double
        self.qutools_dll.TDC_perror.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_perror.restype = ctypes.POINTER(ctypes.c_char_p)
        self.qutools_dll.TDC_getTimebase.argtypes =[ctypes.POINTER(ctypes.c_double)]
        self.qutools_dll.TDC_getTimebase.restype = ctypes.c_int32
        self.qutools_dll.TDC_init.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_init.restype = ctypes.c_int32
        self.qutools_dll.TDC_deInit.argtypes = None
        self.qutools_dll.TDC_deInit.restype = ctypes.c_int32
        self.qutools_dll.TDC_getDevType.argtypes = None
        self.qutools_dll.TDC_getDevType.restype = ctypes.c_int32
        self.qutools_dll.TDC_checkFeatureHbt.argtypes = None
        self.qutools_dll.TDC_checkFeatureHbt.restype = ctypes.c_int32
        #self.qutools_dll.TDC_checkFeatureLifeTime.argtypes = None
        #self.qutools_dll.TDC_checkFeatureLifeTime.restype = ctypes.c_int32
        self.qutools_dll.TDC_getFiveChannelMode.argtypes = None
        self.qutools_dll.TDC_getFiveChannelMode.restype = ctypes.c_int32
        self.qutools_dll.TDC_setFiveChannelMode.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_setFiveChannelMode.restype = ctypes.c_int32
        self.qutools_dll.TDC_getFiveChannelMode.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getFiveChannelMode.restype = ctypes.c_int32
        self.qutools_dll.TDC_preselectSingleStop.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_preselectSingleStop.restype = ctypes.c_int32
        self.qutools_dll.TDC_getSingleStopPreselection.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getSingleStopPreselection.restype = ctypes.c_int32
        self.qutools_dll.TDC_enableChannels.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_enableChannels.restype = ctypes.c_int32
        self.qutools_dll.TDC_getChannelsEnabled.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getChannelsEnabled.restype = ctypes.c_int32
        self.qutools_dll.TDC_enableMarkers.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_enableMarkers.restype = ctypes.c_int32
        self.qutools_dll.TDC_configureSignalConditioning.argtypes = [ctypes.c_int32,ctypes.c_int32,ctypes.c_int32,ctypes.c_double]
        self.qutools_dll.TDC_configureSignalConditioning.restype = ctypes.c_int32
        self.qutools_dll.TDC_getSignalConditioning.argtypes = [ctypes.c_int32, ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_double)]
        self.qutools_dll.TDC_getSignalConditioning.restype = ctypes.c_int32
        self.qutools_dll.TDC_configureSyncDivider.argtypes = [ctypes.c_int32, ctypes.c_int32]
        self.qutools_dll.TDC_configureSyncDivider.restype = ctypes.c_int32
        self.qutools_dll.TDC_getSyncDivider.argtypes = [ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getSyncDivider.restype = ctypes.c_int32
        self.qutools_dll.TDC_setCoincidenceWindow.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_setCoincidenceWindow.restype = ctypes.c_int32
        self.qutools_dll.TDC_setExposureTime.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_setExposureTime.restype = ctypes.c_int32
        self.qutools_dll.TDC_getDeviceParams.argtypes = [ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getDeviceParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_setChannelDelays.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_setChannelDelays.restype = ctypes.c_int32
        self.qutools_dll.TDC_getChannelDelays.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getChannelDelays.restype = ctypes.c_int32
        self.qutools_dll.TDC_setDeadTime.argtypes = [ctypes.c_int32, ctypes.c_int32]
        self.qutools_dll.TDC_setDeadTime.restype = ctypes.c_int32
        self.qutools_dll.TDC_getDeadTime.argtypes = [ctypes.c_int32, ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getDeadTime.restype = ctypes.c_int32
        self.qutools_dll.TDC_configureSelftest.argtypes = [ctypes.c_int32, ctypes.c_int32, ctypes.c_int32, ctypes.c_int32]
        self.qutools_dll.TDC_configureSelftest.restype = ctypes.c_int32
        self.qutools_dll.TDC_getDataLost.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getDataLost.restype = ctypes.c_int32
        self.qutools_dll.TDC_setTimestampBufferSize.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_setTimestampBufferSize.restype = ctypes.c_int32
        self.qutools_dll.TDC_getTimestampBufferSize.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getTimestampBufferSize.restype = ctypes.c_int32
        self.qutools_dll.TDC_enableTdcInput.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_enableTdcInput.restype = ctypes.c_int32
        self.qutools_dll.TDC_freezeBuffers.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_freezeBuffers.restype = ctypes.c_int32
        self.qutools_dll.TDC_getCoincCounters.argtypes = [ctypes.POINTER(ctypes.c_int32), ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getCoincCounters.restype = ctypes.c_int32
        self.qutools_dll.TDC_getLastTimestamps.argtypes = [ctypes.c_int32,ctypes.POINTER(ctypes.c_int64),ctypes.POINTER(ctypes.c_int8),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getLastTimestamps.restype = ctypes.c_int32
        self.qutools_dll.TDC_writeTimestamps.argtypes = [ctypes.c_char_p,ctypes.c_int32]
        self.qutools_dll.TDC_writeTimestamps.restype = ctypes.c_int32
        self.qutools_dll.TDC_inputTimestamps.argtypes = [ctypes.POINTER(ctypes.c_int64),ctypes.POINTER(ctypes.c_int8),ctypes.c_int32]
        self.qutools_dll.TDC_inputTimestamps.restype = ctypes.c_int32
        self.qutools_dll.TDC_readTimestamps.argtypes = [ctypes.c_char_p,ctypes.c_int32]
        self.qutools_dll.TDC_readTimestamps.restype = ctypes.c_int32
        self.qutools_dll.TDC_generateTimestamps.argtypes = [ctypes.c_int32, ctypes.POINTER(ctypes.c_double), ctypes.c_int32]
        self.qutools_dll.TDC_generateTimestamps.restype = ctypes.c_int32
		
		
		
        
        # ------- tdcmultidev.h ------------------------------------------------------
        self.qutools_dll.TDC_discover.argtypes = [ctypes.POINTER(ctypes.c_uint32)]
        self.qutools_dll.TDC_discover.restype = ctypes.c_int32
        self.qutools_dll.TDC_getDeviceInfo.argtypes = [ctypes.c_uint32, ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int),ctypes.POINTER(ctypes.c_char_p),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getDeviceInfo.restype = ctypes.c_int32
        self.qutools_dll.TDC_connect.argtypes = [ctypes.c_uint32]
        self.qutools_dll.TDC_connect.restype = ctypes.c_int32
        self.qutools_dll.TDC_disconnect.argtypes = [ctypes.c_uint32]
        self.qutools_dll.TDC_disconnect.restype = ctypes.c_int32
        self.qutools_dll.TDC_addressDevice.argtypes = [ctypes.c_uint32]
        self.qutools_dll.TDC_addressDevice.restype = ctypes.c_int32
        self.qutools_dll.TDC_getCurrentAddress.argtypes = [ctypes.c_uint32]
        self.qutools_dll.TDC_getCurrentAddress.restype = ctypes.c_int32
        
        # ------- tdcstartstop.h -----------------------------------------------------
        self.qutools_dll.TDC_enableStartStop.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_enableStartStop.restype = ctypes.c_int32
        self.qutools_dll.TDC_addHistogram.argtypes = [ctypes.c_int32,ctypes.c_int32,ctypes.c_int32]
        self.qutools_dll.TDC_addHistogram.restype = ctypes.c_int32
        self.qutools_dll.TDC_setHistogramParams.argtypes = [ctypes.c_int32,ctypes.c_int32]
        self.qutools_dll.TDC_setHistogramParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHistogramParams.argtypes = [ctypes.POINTER(ctypes.c_int32),ctypes.c_int32]
        self.qutools_dll.TDC_getHistogramParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_clearAllHistograms.argtypes = None
        self.qutools_dll.TDC_clearAllHistograms.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHistogram.argtypes = [ctypes.c_int32,ctypes.c_int32,ctypes.c_int32,ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int64)]
        self.qutools_dll.TDC_getHistogram.restype = ctypes.c_int32
        
        # ------- tdchbt.h -----------------------------------------------------------
        # type of a HBT model function
        self.fcttype_dict = { 0: 'NONE', 
            1: 'COHERENT', 
            2: 'THERMAL', 
            3: 'SINGLE', 
            4: 'ANTIBUNCH',
            5: 'THERM_JIT',
            6: 'SINGLE_JIT',
            7: 'ANTIB_JIT',
            8: 'THERMAL_OFS',
            9: 'SINGLE_OFS',
            10: 'ANTIB_OFS',
            11: 'THERM_JIT_OFS',
            12: 'SINGLE_JIT_OFS',
            13: 'ANTIB_JIT_OFS'
            }
        
        self.FCTTYPE_NONE = 0
        self.FCTTYPE_COHERENT = 1
        self.FCTTYPE_THERMAL = 2
        self.FCTTYPE_SINGLE = 3
        self.FCTTYPE_ANTIBUNCH = 4
        self.FCTTYPE_THERM_JIT = 5
        self.FCTTYPE_SINGLE_JIT = 6
        self.FCTTYPE_ANTIB_JIT = 7
        self.FCTTYPE_THERMAL_OFS = 8
        self.FCTTYPE_SINGLE_OFS = 9
        self.FCTTYPE_ANTIB_OFS = 10
        self.FCTTYPE_THERM_JIT_OFS = 11
        self.FCTTYPE_SINGLE_JIT_OFS = 12
        self.FCTTYPE_ANTIB_JIT_OFS = 13
        # ----------------------------------------------------
        # function definitions 
        self.qutools_dll.TDC_enableHbt.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_enableHbt.restype = ctypes.c_int32
        self.qutools_dll.TDC_setHbtParams.argtypes = [ctypes.c_int32,ctypes.c_int32]
        self.qutools_dll.TDC_setHbtParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtParams.argtypes = [ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getHbtParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_setHbtDetectorParams.argtypes = [ctypes.c_double]
        self.qutools_dll.TDC_setHbtDetectorParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtDetectorParams.argtypes = [ctypes.POINTER(ctypes.c_double)]
        self.qutools_dll.TDC_getHbtDetectorParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_setHbtInput.argtypes = [ctypes.c_int32,ctypes.c_int32]
        self.qutools_dll.TDC_setHbtInput.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtInput.argtypes = [ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getHbtInput.restype = ctypes.c_int32
        self.qutools_dll.TDC_resetHbtCorrelations.argtypes = None
        self.qutools_dll.TDC_resetHbtCorrelations.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtEventCount.argtypes = [ctypes.POINTER(ctypes.c_int64),ctypes.POINTER(ctypes.c_int64),ctypes.POINTER(ctypes.c_double)]
        self.qutools_dll.TDC_getHbtEventCount.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtIntegrationTime.argtypes = [ctypes.POINTER(ctypes.c_double)]
        self.qutools_dll.TDC_getHbtIntegrationTime.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtCorrelations.argtypes = [ctypes.c_int32, ctypes.POINTER(QuTAG.TDC_HbtFunction)]
        self.qutools_dll.TDC_getHbtCorrelations.restype = ctypes.c_int32
        self.qutools_dll.TDC_calcHbtG2.argtypes = [ctypes.POINTER(QuTAG.TDC_HbtFunction)]
        self.qutools_dll.TDC_calcHbtG2.restype = ctypes.c_int32
        self.qutools_dll.TDC_fitHbtG2.argtypes = [ctypes.POINTER(QuTAG.TDC_HbtFunction),ctypes.c_int32,ctypes.POINTER(ctypes.c_double),ctypes.POINTER(ctypes.c_double),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_fitHbtG2.restype = ctypes.c_int32
        self.qutools_dll.TDC_getHbtFitStartParams.argtypes = [ctypes.c_int32,ctypes.POINTER(ctypes.c_double)]
        self.qutools_dll.TDC_getHbtFitStartParams.restype = ctypes.POINTER(ctypes.c_double)
        self.qutools_dll.TDC_calcHbtModelFct.argtypes = [ctypes.c_int32,ctypes.POINTER(ctypes.c_double),ctypes.POINTER(QuTAG.TDC_HbtFunction)]
        self.qutools_dll.TDC_calcHbtModelFct.restype = ctypes.c_int32
        self.qutools_dll.TDC_generateHbtDemo.argtypes = [ctypes.c_int32,ctypes.POINTER(ctypes.c_double),ctypes.c_double]
        self.qutools_dll.TDC_generateHbtDemo.restype = ctypes.c_int32
        self.qutools_dll.TDC_createHbtFunction.argtypes = None
        self.qutools_dll.TDC_createHbtFunction.restype = ctypes.POINTER(QuTAG.TDC_HbtFunction)
        self.qutools_dll.TDC_releaseHbtFunction.argtypes = [ctypes.POINTER(QuTAG.TDC_HbtFunction)]
        self.qutools_dll.TDC_releaseHbtFunction.restype = None
        self.qutools_dll.TDC_analyseHbtFunction.argtypes = [ctypes.POINTER(QuTAG.TDC_HbtFunction),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_double),ctypes.c_int32]
        self.qutools_dll.TDC_analyseHbtFunction.restype = ctypes.c_int32
        
        # ------- tdclifetm.h --------------------------------------------------------
        self.LFT_PARAM_SIZE = 4
        # type of a lifetime model function
        self.lfttype_dict = {0: 'NONE',
            1: 'EXP',
            2: 'DBL_EXP',
            3: 'KOHLRAUSCH'
            }
        self.LFTTYPE_NONE = 0
        self.LFTTYPE_EXP = 1
        self.LFTTYPE_DBL_EXP = 2
        self.LFTTYPE_KOHLRAUSCH = 3

        # function definitions
        self.qutools_dll.TDC_enableLft.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_enableLft.restype = ctypes.c_int32
        self.qutools_dll.TDC_setLftStartInput.argtypes = [ctypes.c_int32]
        self.qutools_dll.TDC_setLftStartInput.restype = ctypes.c_int32
        self.qutools_dll.TDC_addLftHistogram.argtypes = [ctypes.c_int32,ctypes.c_int32]
        self.qutools_dll.TDC_addLftHistogram.restype = ctypes.c_int32
        self.qutools_dll.TDC_getLftStartInput.argtypes = [ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getLftStartInput.restype = ctypes.c_int32
        self.qutools_dll.TDC_setLftParams.argtypes = [ctypes.c_int32,ctypes.c_int32]
        self.qutools_dll.TDC_setLftParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_getLftParams.argtypes = [ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_getLftParams.restype = ctypes.c_int32
        self.qutools_dll.TDC_resetLftHistograms.argtypes = None
        self.qutools_dll.TDC_resetLftHistograms.restype = ctypes.c_int32
        self.qutools_dll.TDC_createLftFunction.argtypes = None
        self.qutools_dll.TDC_createLftFunction.restype = ctypes.POINTER(QuTAG.TDC_LftFunction)
        self.qutools_dll.TDC_releaseLftFunction.argtypes = [ctypes.POINTER(QuTAG.TDC_LftFunction)]
        self.qutools_dll.TDC_releaseLftFunction.restype = None
        self.qutools_dll.TDC_analyseLftFunction.argtypes = [ctypes.POINTER(QuTAG.TDC_LftFunction),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_double),ctypes.c_int32]
        self.qutools_dll.TDC_analyseLftFunction.restype = None
        self.qutools_dll.TDC_getLftHistogram.argtypes = [ctypes.c_int32,ctypes.c_int32,ctypes.POINTER(QuTAG.TDC_LftFunction),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int32),ctypes.POINTER(ctypes.c_int64)]
        self.qutools_dll.TDC_getLftHistogram.restype = ctypes.c_int32
        self.qutools_dll.TDC_calcLftModelFct.argtypes = [ctypes.c_int32,ctypes.POINTER(ctypes.c_double),ctypes.POINTER(QuTAG.TDC_LftFunction)]
        self.qutools_dll.TDC_calcLftModelFct.restype = ctypes.c_int32
        self.qutools_dll.TDC_generateLftDemo.argtypes = [ctypes.c_int32,ctypes.POINTER(ctypes.c_double),ctypes.c_double]
        self.qutools_dll.TDC_generateLftDemo.restype = ctypes.c_int32
        self.qutools_dll.TDC_fitLftHistogram.argtypes = [ctypes.POINTER(ctypes.c_double),ctypes.c_int32,ctypes.POINTER(ctypes.c_double),ctypes.POINTER(ctypes.c_double),ctypes.POINTER(ctypes.c_int32)]
        self.qutools_dll.TDC_fitLftHistogram.restype = ctypes.c_int32
        
# Init --------------------------------------------------------------    
    def Initialize(self): 
        ans = self.qutools_dll.TDC_init(self.dev_nr)
        
        if (ans != 0):
            print("Error in TDC_init: " + self.err_dict[ans])
        return ans

    def deInitialize(self):
        ans = self.qutools_dll.TDC_deInit()
        
        if (ans != 0): # from the documentation: "never fails"
            print("Error in TDC_deInit: " + self.err_dict[ans])
        return ans

# Device Info -------------------------------------------------------------
    def getVersion(self):
        return self.qutools_dll.TDC_getVersion()
    
    def getTimebase(self):
        timebase = ctypes.c_double()
        ans = self.qutools_dll.TDC_getTimebase(ctypes.byref(timebase))
        if (ans!=0):
            print("Error in TDC_getTimebase: "+self.err_dict[ans])
        return timebase.value
        
    def getDeviceType(self):
        ans = self.qutools_dll.TDC_getDevType()
        return ans
        
    def checkFeatureHBT(self):
        ans = self.qutools_dll.TDC_checkFeatureHbt()
        return ans == 1
		
    def checkFeatureLifetime(self):
        ans = self.qutools_dll.TDC_checkFeatureLifeTime()
        return ans == 1
            
    def checkFeatureFiveChan(self):
        ans = self.qutools_dll.TDC_checkFeatureFiveChan()
        return ans == 1
		
    def getFiveChannelMode(self):
        enable = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getFiveChannelMode(ctypes.byref(enable))
        if (ans != 0):
            print("Error in TDC_getFiveChannelMode: "+self.ans_dict[ans])
        return enable.value==1
    
    def getSingleStopPreselection(self):
        enable = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getSingleStopPreselection(ctypes.byref(enable))
        if (ans != 0):
            print("Error in TDC_getSingleStopPreselection: "+self.ans_dict[ans])
        return enable.value==1
    
    def preselectSingleStop(self, single):
        if (single):
            enable = 1
        else:
            enable = 0
        ans = self.qutools_dll.TDC_preselectSingleStop(enable)
        if (ans != 0):
            print("Error in TDC_preselectSingleStop: "+self.ans_dict[ans])
        return ans
# multiple devices ---------------------------------    
    def addressDevice(self,deviceNumber):
        ans = self.qutools_dll.TDC_addressDevice(deviceNumber)
        if (ans!=0):
            print("Error in TDC_addressDevice: "+self.ans_dict[ans])
        return ans
    
    def connect(self,deviceNumber):
        ans = self.qutools_dll.TDC_connect(deviceNumber)
        if (ans!=0):
            print("Error in TDC_connect: "+self.ans_dict[ans])
        return ans
    
    def disconnect(self,deviceNumber):
        ans = self.qutools_dll.TDC_disconnect(deviceNumber)
        if (ans!=0):
            print("Error in TDC_disconnect: "+self.ans_dict[ans])
        return ans
    
    def discover(self):
        devCount = ctypes.c_uint32()
        ans = self.qutools_dll.TDC_discover(ctypes.byref(devCount))
        if (ans!=0):
            print("Error in TDC_discover: "+self.ans_dict[ans])
        return devCount.value
    
    def getCurrentAddress(self):
        devNo = ctype.c_unit32()
        ans = self.qutools_dll.TDC_getCurrentAddress(ctypes.byref(devNo))
        if (ans!=0):
            print("Error in TDC_getCurrentAddress: "+self.ans_dict[ans])
        return devNo.value
        
    def getDeviceInfo(self,deviceNumber):
        devicetype = ctypes.c_int32()
        deviceid = ctypes.c_int32()
        serialnumnber=ctypes.c_char_p()
        connected = ctypes.s_int32()
        
        ans = self.qutools_dll.TDC_getDeviceInfo(deviceNumber,ctypes.byref(devicetype), ctypes.byref(deviceid), ctypes.byref(serialnumber), ctypes.byref(connected))
        
        if (ans!=0):
            print("Error in TDC_getDeviceInfo: "+self.ans_dict[ans])
            
        return (devicetype.value, deviceid.value, serialnumber.value,connected.value)
        
# Configure Channels ----------------------------------------------------------------
    def getSignalConditioning(self, channel):
        edg = ctypes.c_int32()
        threshold = ctypes.c_double()
        
        ans = self.qutools_dll.TDC_getSignalConditioning(channel, ctypes.byref(edg), ctypes.byref(threshold))
        
        if (ans != 0):
            print("Error in TDC_getSignalConditioning: "+self.err_dict[ans])
            
        return (edg.value == 1, threshold.value)
    
    def setSignalConditioning(self, channel, conditioning, edge, threshold):
        if edge:
            edge_value = 1 # True: Rising
        else:
            edge_value = 0 # False: Falling
        
        ans = self.qutools_dll.TDC_configureSignalConditioning(channel,conditioning,edge_value,threshold)
        if (ans != 0):
            print("Error in TDC_configureSignalConditioning: "+self.err_dict[ans])
        return ans
    
    def getDivider(self):
        divider = ctypes.c_int32()
        reconstruct = ctypes.c_bool()
        ans = self.qutools_dll.TDC_getSyncDivider(ctypes.byref(divider), ctypes.byref(reconstruct))    
        
        if (ans != 0):
            print("Error in TDC_getSyncDivider: " + self.err_dict[ans])
            
        return (divider.value, reconstruct.value)
        
    def setDivider(self, divider, reconstruct):
        # allowed values:
        # - quTAG: 1, 2, 4, 8
        ans = self.qutools_dll.TDC_configureSyncDivider(divider, reconstruct)    
        if (ans != 0):
            print("Error in TDC_configureSyncDivider: " + self.err_dict[ans])
        return ans
        
    def getChannelDelays(self):
        delays = np.zeros(int(8), dtype=np.int32)
        ans = self.qutools_dll.TDC_getChannelDelays(delays.ctypes.data_as(ctypes.POINTER(ctypes.c_int32)))
        if (ans != 0):
            print("Error in TDC_getChannelDelays: " + self.err_dict[ans])
        return delays
        
    def setChannelDelays(self, delays):
        ans = self.qutools_dll.TDC_setChannelDelays(delays.ctypes.data_as(ctypes.POINTER(ctypes.c_int32)))
        if (ans != 0):
            print("Error in TDC_setChannelDelays: " + self.err_dict[ans])
        return ans
        
    def getDeadTime(self,chn):        
        #chn = ctypes.c_int32()
        deadTime = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getDeadTime(chn, ctypes.byref(deadTime))
        if (ans != 0):
            print("Error in TDC_getDeadTime: " + self.err_dict[ans])
        return deadTime.value
        
    def setDeadTime(self,chn,deadTime):
        ans = self.qutools_dll.TDC_setDeadTime(chn,deadTime)
        if (ans != 0):
            print("Error in TDC_setDeadTime: " + self.err_dict[ans])
        return ans
        
    def setFiveChannelMode(self,enable):
        if enable:
            ena = 1
        else:
            ena = 0
        ans = self.qutools_dll.TDC_setFiveChannelMode(ena)
        if (ans != 0):
            print("Error in TDC_setFiveChannelMode: "+self.err_dict[ans])
        return ans
    
    def enableTDCInput(self, enable):
        if enable:
            value = 1 # enable input
        else:
            value = 0 # disable input
        
        ans = self.qutools_dll.TDC_enableTdcInput(value)
        if (ans != 0):
            print("Error in TDC_enableTdcInput: "+self.err_dict[ans])
            
        return ans
    
    def enableChannels(self, channels):
        if channels:
            bitstring = ''
            for k in range(max(channels)+1):
                if k in channels:
                    bitstring = '1' + bitstring
                else:
                    bitstring = '0' + bitstring
        else:
            bitstring = '0'

        channelMask = int(bitstring, 2)
        ans = self.qutools_dll.TDC_enableChannels(channelMask)
        if ans != 0:
            print("Error in TDC_enableChannels: "+self.err_dict[ans])
        
        return ans
    
    def getChannelsEnabled(self):
        channelMask = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getChannelsEnabled(ctypes.byref(channelMask))
        
        channels = [0 for i in range(self.TDC_QUTAG_CHANNELS)]
        mask = channelMask.value
        i=1
        while mask > 0:
            channels[self.TDC_QUTAG_CHANNELS-i] = mask.value % 2
            mask //= 2
            i += 1
            if i > self.TDC_QUTAG_CHANNELS:
                print("Error in computing channelMask (getChannelsEnabled).")
                break
                
        if ans != 0:
            print("Error in TDC_enableChannels: "+self.err_dict[ans])
        return channels

    def enableMarkers(self, markers):
        if markers:
            bitstring = ''
            for k in range(max(markers)+1):
                if k in markers:
                    bitstring = '1' + bitstring
                else:
                    bitstring = '0' + bitstring
        else:
            bitstring = '0'

        markerMask = int(bitstring, 2)
        ans = self.qutools_dll.TDC_enableMarkers(markerMask)
        if ans != 0:
            print("Error in TDC_enableMarkers: "+self.err_dict[ans])
        
        return ans
        
# Define Measurements -------------------------------------------------------
    def setCoincidenceWindow(self, coincWin):
        ans = self.qutools_dll.TDC_setCoincidenceWindow(coincWin)
        if ans != 0:
            print("Error in TDC_setCoincidenceWindows: "+self.err_dict[ans])
        return 0
        
    def setExposureTime(self, expTime):
        ans = self.qutools_dll.TDC_setExposureTime(expTime)
        if ans != 0:
            print("Error in TDC_setExposureTime: "+self.err_dict[ans])
        return ans
        
    def getDeviceParams(self):
        chn = ctypes.c_int32()
        coinc = ctypes.c_int32()
        exptime = ctypes.c_int32()
        
        ans = self.qutools_dll.TDC_getDeviceParams( ctypes.byref(coinc), ctypes.byref(exptime))
        if ans != 0:
            print("Error in TDC_getDeviceParams: "+self.err_dict[ans])
        return (chn.value, coinc.value, exptime.value)

# Self test ---------------------------------------------------------------------
    def configureSelftest(self, channels, period, burstSize, burstDist):
        if channels:
            bitstring = ''
            for k in range(max(channels)+1):
                if k in channels:
                    bitstring = '1' + bitstring
                else:
                    bitstring = '0' + bitstring
        else:
            bitstring = '0'

        channelMask = int(bitstring, 2)
        ans = self.qutools_dll.TDC_configureSelftest(channelMask,period,burstSize,burstDist)
        if ans != 0:
            print("Error in TDC_configureSelftest: "+self.err_dict[ans])
            
        return ans
        
    def generateTimestamps(self, simtype, par, count):
        ans = self.qutools_dll.TDC_generateTimestamps(simtype,ctypes.byref(par),count)
        if ans != 0:
            print("Error in TDC_generateTimestamps: "+self.err_dict[ans])
        return ans
        
# Timestamping ---------------------------------------------------------
    def getBufferSize(self):
        sz = ctype.c_int32()
        ans = self.qutools_dll.TDC_getTimestampBufferSize(ctypes.byref(sz))
        if ans != 0:
            print("Error in TDC_getTimestampBufferSize: "+self.err_dict[ans])
        return sz.value
    
    def setBufferSize(self, size):
        self._bufferSize = size
        ans = self.qutools_dll.TDC_setTimestampBufferSize(size)
        if ans != 0:
            print("Error in TDC_setTimestampBufferSize: "+self.err_dict[ans])
        return ans
        
    def getDataLost(self):
        lost = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getDataLost(ctypes.byref(lost))
        if ans != 0:
            print("Error in TDC_getDataLost: "+self.err_dict[ans])
        return lost.value
        		
		
    def freezeBuffers(self, freeze):
        if freeze:
            freeze_value = 1
        else:
            freeze_value = 0
        ans = self.qutools_dll.TDC_freezeBuffers(freeze_value)
        if ans != 0:
            print("Error in TDC_freezeBuffers: "+self.err_dict[ans])
            
        return ans
    
    def getLastTimestamps(self,reset):
        timestamps = np.zeros(int(self._bufferSize), dtype=np.int64)
        channels = np.zeros(int(self._bufferSize), dtype=np.int8)
        valid = ctypes.c_int32()

        ans = self.qutools_dll.TDC_getLastTimestamps(reset,timestamps.ctypes.data_as(ctypes.POINTER(ctypes.c_int64)),channels.ctypes.data_as(ctypes.POINTER(ctypes.c_int8)),ctypes.byref(valid))
        if ans != 0: # "never fails"
            print("Error in TDC_getLastTimestamps: "+self.err_dict[ans])
            
        return (timestamps,channels, valid.value)
    
# File IO -------------------------------------------
    def writeTimestamps(self, filename, fileformat):
        filename = filename.encode('utf-8')
        ans = self.qutools_dll.TDC_writeTimestamps(filename,fileformat)
        if ans != 0:
            print("Error in TDC_writeTimestamps: "+self.err_dict[ans])
        return ans
        
    def inputTimestamps(self, timestamps,channels,count):
        ans = self.qutools_dll.TDC_inputTimestamps(ctypes.byref(timestamps),ctypes.byref(channels),count)
        if ans != 0:
            print("Error in TDC_inputTimestamps: "+self.err_dict[ans])
        return ans
    
    def readTimestamps(self, filename, fileformat):
        filename = filename.encode('utf-8')
        ans = self.qutools_dll.TDC_readTimestamps(filename,fileformat)
        if ans != 0:
            print("Error in TDC_readTimestamps: "+self.err_dict[ans])
        return ans
        
# Counting --------------------------------------------
    def getCoincCounters(self):
        data = np.zeros(int(31),dtype=np.int32)
        update = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getCoincCounters(data.ctypes.data_as(ctypes.POINTER(ctypes.c_int32)),ctypes.byref(update))
        if ans != 0: # "never fails"
            print("Error in TDC_getCoincCounters: "+self.err_dict[ans])
        return (data,update.value)



# Start-Stop --------------------------------------------------------
    def enableStartStop(self, enable):
        if enable:
            ena_value = 1
        else:
            ena_value = 0
        ans = self.qutools_dll.TDC_enableStartStop(ena_value)
        if ans != 0:
            print("Error in TDC_enableStartStop: "+self.err_dict[ans])
        return ans
    
    def addHistogram(self, startChannel, stopChannel, enable):
        self.enableStartStop(True)
        if enable:
            ena_value = 1
        else:
            ena_value = 0
        ans = self.qutools_dll.TDC_addHistogram(startChannel, stopChannel,ena_value)
        if ans != 0:
            print("Error in TDC_addHistogram: "+self.err_dict[ans])
        return ans
    
    def setHistogramParams(self, binWidth, binCount):
        self._StartStopBinCount = binCount
        ans = self.qutools_dll.TDC_setHistogramParams(binWidth,binCount)
        if ans != 0:
            print("Error in TDC_setHistogramParams: "+self.err_dict[ans])
        return ans
    
    def getHistogramParams(self):
        binWidth = ctypes.c_int32()
        binCount = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getHistogramParams(ctypes.byref(binWidth),ctypes.byref(binCount))
        if ans != 0:
            print("Error in TDC_getHistogramParams: "+self.err_dict[ans])
        return (binWidth.value, binCount.value)
    
    def clearAllHistograms(self):
        ans = self.qutools_dll.TDC_clearAllHistograms()
        if ans != 0:
            print("Error in TDC_clearAllHistograms: "+self.err_dict[ans])
        return ans
        
    def getHistogram(self, chanA, chanB, reset):
        if reset:
            reset_value = 1
        else:
            reset_value = 0
        data = np.zeros(self._StartStopBinCount, dtype=np.int32)
        count = ctypes.c_int32()
        tooSmall = ctypes.c_int32()
        tooLarge = ctypes.c_int32()
        starts = ctypes.c_int32()
        stops = ctypes.c_int32()
        expTime = ctypes.c_int64()
        ans = self.qutools_dll.TDC_getHistogram(chanA,chanB,reset_value,data.ctypes.data_as(ctypes.POINTER(ctypes.c_int32)),ctypes.byref(count),ctypes.byref(tooSmall),ctypes.byref(tooLarge),ctypes.byref(starts),ctypes.byref(stops),ctypes.byref(expTime))
        if ans != 0:
            print("Error in TDC_getHistogram: "+self.err_dict[ans])
        
        return (data,count.value,tooSmall.value,tooLarge.value,starts.value,stops.value,expTime.value)
        
# Lifetime ----------------------------------------------------------
    def enableLFT(self,enable):
        if enable:
            ena = 1
        else:
            ena = 0
        ans = self.qutools_dll.TDC_enableLft(ena)
        if ans != 0:
            print("Error in TDC_enableLft: "+self.err_dict[ans])
        return ans
        
    def setLFTParams(self,binWidth,binCount):
        self._LFTBufferSize = binCount
        ans = self.qutools_dll.TDC_setLftParams(binWidth, binCount)
        if ans != 0:
            print("Error in TDC_setLftParams: "+self.err_dict[ans])
        return ans

    def getLFTParams(self):
        binWidth = ctypes.c_int32()
        binCount = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getLftParams(ctypes.byref(binWidth), ctypes.byref(binCount))
        if ans != 0:
            print("Error in TDC_getLftParams: "+self.err_dict[ans])
        return binWidth.value, binCount.value

    def setLFTStartInput(self,startChannel):
        ans = self.qutools_dll.TDC_setLftStartInput(startChannel)
        if ans != 0:
            print("Error in TDC_setLftStartInput: "+self.err_dict[ans])
        return ans

    def getLFTStartInput(self):
        startChannel = ctypes.c_int32()
        ans = self.qutools_dll.TDC_getLFTStartInput(ctype.byref(startChannel))
        if ans != 0:
            print("Error in TDC_getLFTStartInput: "+self.err_dict[ans])
        return startChannel.value

    def resetLFTHistograms(self):
        ans = self.qutools_dll.TDC_resetLftHistograms()
        if ans != 0:
            print("Error in TDC_resetLftHistrograms: "+self.err_dict[ans])
        return ans

    def createLFTFunction(self):
        LFTfunction = self.qutools_dll.TDC_createLftFunction()
        return LFTfunction

    def releaseLFTFunction(self, LFTfunction):
        self.qutools_dll.TDC_releaseLftFunction(LFTfunction)
        return 0

    def addLFTHistogram(self,stopchannel,enable):
        if enable:
            ena = 1
        else:
            ena = 0
        
        ans = self.qutools_dll.TDC_addLftHistogram(stopchannel,ena)
        if ans != 0:
            print("Error in TDC_addLftHistogram: "+self.err_dict[ans])
        return ans
        
    def analyseLFTFunction(self,lft):
        capacity = ctypes.c_int32()
        size = ctypes.c_int32()
        binWidth = ctypes.c_int32()
        values = np.zeros(self._LFTBufferSize, dtype=np.double)
        
        self.qutools_dll.TDC_analyseLftFunction (lft, ctypes.byref(capacity), ctypes.byref(size), ctypes.byref(binWidth), values.ctypes.data_as(ctypes.POINTER(ctypes.c_double)), self._LFTBufferSize)
        return (capacity.value, size.value, binWidth.value, values)

    def getLFTHistogram(self,channel,reset, lft):
        tooBig = ctypes.c_int32()
        startevt = ctypes.c_int32()
        stopevt = ctypes.c_int32()
        expTime = ctypes.c_int64()
        if reset:
            resetvalue = 1
        else:
            resetvalue = 0
            
        ans = self.qutools_dll.TDC_getLftHistogram(channel, resetvalue, lft, ctypes.byref(tooBig), ctypes.byref(startevt), ctypes.byref(stopevt), ctypes.byref(expTime))
        if ans != 0:
            print("Error in TDC_getLFTHistogram: "+self.err_dict[ans])
        return (tooBig.value, startevt.value, stopevt.value, expTime.value)

    def calcLFTModelFCT(self,lfttype,params,lftfunction):
        c_params = np.zeros(self.LFT_PARAM_SIZE,dtype=np.double)
        for i in range(len(params)):
            if (i < self.LFT_PARAM_SIZE):
                c_params[i] = params[i]
            else:
                break
        ans = self.qutools.TDC_calcLftModelFct(lfttype,c_params.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),lftfunction)
        if ans != 0:
            print("Error in TDC_calcLftModelFct: "+self.err_dict[ans])
        return ans

    def generateLFTDemo(self,lfttype,params,noiseLv):
        c_params = np.zeros(self.LFT_PARAM_SIZE,dtype=np.double)
        for i in range(len(params)):
            if (i < self.LFT_PARAM_SIZE):
                c_params[i] = params[i]
            else:
                break
        ans = selfg.qutools.TDC_generateLftDemo(lfttype,c_params.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),noiseLv)
        if ans != 0:
            print("Error in TDC_generateLftDemo: "+self.err_dict[ans])
        return ans

    def fitLFTHistogram(self,lft,lfttype, startParams):
        c_params = np.zeros(self.LFT_PARAM_SIZE,dtype=np.double)
        for i in range(len(startParams)):
            if (i < self.LFT_PARAM_SIZE):
                c_params[i] = startParams[i]
            else:
                break
        fitParams=np.zeros(4,dtype=np.double)
        iterations = ctypes.c_int32()
        
        ans = self.qutools_dll.TDC_fitLftHistogram(lft,lfttype,c_params.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),fitParams.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),ctypes.byref(iterations))
        if ans != 0:
            print("Error in TDC_fitLftHistogram: "+self.err_dict[ans])
        return (fitParams,iterations.value)

# HBT ---------------------------------------------------------------
    def enableHBT(self, enable):
        if enable:
            ena_value = 1
        else:
            ena_value = 0
        ans = self.qutools_dll.TDC_enableHbt(ena_value)
        if ans != 0:
            print("Error in TDC_enableHbt: "+self.err_dict[ans])
        return ans
    
    def setHBTParams(self, binWidth, binCount):
        ans = self.qutools_dll.TDC_setHbtParams(binWidth,binCount)
        self._HBTBufferSize = binCount * 2 - 1
        if ans != 0:
            print("Error in TDC_setHbtParams: "+self.err_dict[ans])
        return ans
    
    def getHBTParams(self):
        binWidth = ctypes.c_int32()
        binCount = ctypes.c_int32()
        ans = self.qutools_dll.TDC_setHbtParams(ctypes.byref(binWidth),ctypes.byref(binCount))
        if ans != 0:
            print("Error in TDC_getHbtParams: "+self.err_dict[ans])
        return (binWidth.value, binCount.value)
    
    def setHBTDetectorParams(self, jitter):
        ans = self.qutools_dll.TDC_setHbtDetectorParams(jitter)
        if ans != 0:
            print("Error in TDC_setHbtDetectorParams: "+self.err_dict[ans])
        return ans
    
    def getHBTDetectorParams(self):
        jitter = ctypes.c_double()
        ans = self.qutools_dll.TDC_getHbtDetectorParams(ctypes.byref(jitter))
        if ans != 0:
            print("Error in TDC_getHbtdetectorParams: "+self.err_dict[ans])
        return jitter.value
    
    
    def setHBTInput(self, channel1, channel2):
        ans = self.qutools_dll.TDC_setHbtInput(channel1, channel2)
        if ans != 0:
            print("Error in TDC_setHbtInput: "+self.err_dict[ans])
        return ans
    
    
    def getHBTInput(self):
        channel1=ctypes.c_int32()
        channel2=ctypes.c_int32()
        ans = self.qutools_dll.TDC_getHbtInput(ctypes.byref(channel1), ctypes.byref(channel2))
        if ans != 0:
            print("Error in TDC_getHbtInput: "+self.err_dict[ans])
        return (channel1.value,channel2.value)
    
    def resetHBTCorrelations(self):
        ans = self.qutools_dll.TDC_resetHbtCorrelations()
        if ans != 0:
            print("Error in TDC_resetHbtCorrelations: "+self.err_dict[ans])
        return ans
    
    def getHBTEventCount(self):
        totalCount = ctypes.c_int64()
        lastCount = ctypes.c_int64()
        lastRate = ctypes.c_double()
        ans = self.qutools_dll.TDC_getHbtEventCount(ctypes.byref(totalCount), ctypes.byref(lastCount), ctypes.byref(lastRate))
        if ans != 0:
            print("Error in TDC_getHbtEventCount: "+self.err_dict[ans])
        return (totalCount.value,lastCount.value,lastRate.value)
    
    def getHBTIntegrationTime(self):
        intTime = ctypes.c_double()
        ans = self.qutools_dll.TDC_getHbtIntegrationTime(ctypes.byref(intTime))
        if ans != 0:
            print("Error in TDC_getHbtIntegrationTime: "+self.err_dict[ans])
        return intTime.value
    
    def getHBTCorrelations(self, forward, hbtfunction):
        ans = self.qutools_dll.TDC_getHbtCorrelations(forward,hbtfunction)
        if ans != 0:
            print("Error in TDC_getHbtCorrelations: "+self.err_dict[ans])
        return ans
    
    def calcHBTG2(self, hbtfunction):
        ans = self.qutools_dll.TDC_calcHbtG2(hbtfunction)
        if ans != 0:
            print("Error in TDC_calcHbtG2: "+self.err_dict[ans])
        return ans
    
    def fitHBTG2(self, hbtfunction, fitType, startParams):
        c_params = np.zeros(self.HBT_PARAM_SIZE,dtype=np.double)
        for i in range(len(startParams)):
            if (i < self.HBT_PARAM_SIZE):
                c_params[i] = startParams[i]
            else:
                break
        fitParams = np.zeros(self.HBT_PARAM_SIZE,dtype=np.double)
        iterations = ctypes.c_int32()
        
        ans = self.qutools_dll.TDC_fitHbtG2(hbtfunction,fitType,c_params.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),fitParams.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),ctypes.byref(iterations))
        if ans != 0:
            print("Error in TDC_fitHbtG2: "+self.err_dict[ans])
        return (fitParams,iterations.value)
    
    def getHBTFitStartParams(self, fctType):
        fitParams = np.zeros(self.HBT_PARAM_SIZE,dtype=np.double)
        ans = self.qutools_dll.TDC_getHbtFitStartParams(fctType, fitParams.ctypes.data_as(ctypes.POINTER(ctypes.c_double)))
        if ans != 0:
            print("Error in TDC_getHbtFitStartParams: "+self.err_dict[ans])
        return fitParams
    
    def calcHBTModelFct(self, fctType, params, hbtfunction):
        c_params = np.zeros(self.HBT_PARAM_SIZE,dtype=np.double)
        for i in range(len(params)):
            if (i < self.HBT_PARAM_SIZE):
                c_params[i] = params[i]
            else:
                break
        ans = self.qutools_dll.TDC_calcHbtModelFct(fctType,c_params.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),hbtfunction)
        if ans != 0:
            print("Error in TDC_calcHbtModelFct: "+self.err_dict[ans])
        return ans
    
    def generateHBTDemo(self, fctType, params, noiseLv):
        c_params = np.zeros(self.HBT_PARAM_SIZE,dtype=np.double)
        for i in range(len(params)):
            if (i < self.HBT_PARAM_SIZE):
                c_params[i] = params[i]
            else:
                break
        ans = self.qutools_dll.TDC_generateHbtDemo(fctType,c_params.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),noiseLv)
        if ans != 0:
            print("Error in TDC_generateHbtDemo: "+self.err_dict[ans])
        return ans
        
    def createHBTFunction(self):
        return self.qutools_dll.TDC_createHbtFunction()
        
    def releaseHBTFunction(self, hbtfunction):
        self.qutools_dll.TDC_releaseHbtFunction(hbtfunction)
        return 0
    
    def analyzeHBTFunction(self, hbtfunction):
        capacity = ctypes.c_int32()
        size = ctypes.c_int32()
        binWidth = ctypes.c_int32()
        iOffset = ctypes.c_int32()
        values = np.zeros(self._HBTBufferSize,dtype=np.double)
        self.qutools_dll.TDC_analyseHbtFunction(hbtfunction,ctypes.byref(capacity),ctypes.byref(size),ctypes.byref(binWidth),ctypes.byref(iOffset),values.ctypes.data_as(ctypes.POINTER(ctypes.c_double)),self._HBTBufferSize)
        
        return (capacity.value,size.value,binWidth.value,iOffset.value,values)
