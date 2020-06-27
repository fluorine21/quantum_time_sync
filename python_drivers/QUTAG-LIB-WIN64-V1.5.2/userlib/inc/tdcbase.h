/******************************************************************************
 *
 *  Project:        quTAG Control Library
 *
 *  Filename:       tdcbase.h
 *
 *  Purpose:        Control and data acquisition functions for TDC
 *
 *  Author:         NHands GmbH & Co KG
 */
/*****************************************************************************/
/** @file tdcbase.h
 *  @brief Control and data acquisition functions for TDC
 *
 *  The header defines functions that allow to control the TDC time-to-digital
 *  converter and acquire data from it. The received timestamp data can be
 *  retrieved programatically or stored in a file. They are also processed
 *  to a set of histograms internally.
 *
 *  Use @ref TDC_init to start and connect to the device and
 *  @ref TDC_deInit to close the connection. Set device parameters with
 *  @ref TDC_setExposureTime etc. and enable Measurement with
 *  @ref TDC_enableChannels. Customize the timestamp buffer with
 *  @ref TDC_setTimestampBufferSize and retrieve timestamps with
 *  @ref TDC_getLastTimestamps or @ref TDC_writeTimestamps.
 *
 *  @ref TDC_inputTimestamps, @ref TDC_readTimestamps, and
 *  @ref TDC_generateTimestamps allow to work with generated or saved timestamps.
 *  Interference with real data from the device should be avoided
 *  (see @ref TDC_enableTdcInput).
 *
 *  If no device is connected, the library falls into a demo mode where all
 *  parameter setting and getting calls return without error.
 */
/*****************************************************************************/
/* $Id: tdcbase.h,v 1.15 2019/11/29 13:25:13 trurl Exp $ */

#ifndef __TDCBASE_H
#define __TDCBASE_H

#include "tdcdecl.h"

/** @name Size constants
 *  @{
 */
#define TDC_QUTAG_CHANNELS   5   /**< Number of hardware input channels */
#define TDC_COINC_CHANNELS  31   /**< Number of internal event and coincidence counters */
#define TDC_MAX_CHANNEL_NO  20   /**< Maximum channel number (including synchronzed devices) */
/** @} */


/** Type of the TDC device */
typedef enum {
  DEVTYPE_QUTAG,                 /**< quTAG device */
  DEVTYPE_NONE                   /**< No device / simulated device */
} TDC_DevType;


/** Bitmasks for feature inquiry */
typedef enum {
  FEATURE_HBT       = 0x0001,    /*< HBT software functions */
  FEATURE_LIFETIME  = 0x0002,    /*< Lifetime software functions */
  FEATURE_3_CHAN    = 0x0004,    /*< Input channel 3 enabled */
  FEATURE_4_CHAN    = 0x0008,    /*< Input channels 3 & 4 enabled */
  FEATURE_5_CHAN    = 0x0010,    /*< Start channel may be used as channel 5 */
  FEATURE_MARKERS   = 0x0020,    /*< Marker input */
  FEATURE_FILTERS   = 0x0040,    /*< Event filters for timestamp stream */
  FEATURE_EXTCLK    = 0x0080,    /*< External clock enabled */
  FEATURE_DEVSYNC   = 0x0100,    /*< Synchronisation of multiple devices */
  FEATURE_HIRES     = 0x0200     /*< Jitter upgrade / high resolution */
} TDC_FeatureFlag;

/** A combination of feature Flags */
typedef Int32 TDC_FeatureFlags;


/** Output file format */
typedef enum {
  FORMAT_ASCII,                  /**< ASCII format */
  FORMAT_BINARY,                 /**< Uncompressed binary format (40B header, 10B/time tag) */
  FORMAT_COMPRESSED,             /**< Compressed binary format   (40B header,  5B/time tag) */
  FORMAT_RAW,                    /**< Uncompressed binary without header (for compatiblity) */
  FORMAT_NONE                    /**< No format / invalid */
} TDC_FileFormat;


/** Type of signal conditioning */
typedef enum {
  SCOND_LVTTL = 1,               /**< For LVTTL signals:
                                      Trigger at 2V rising edge, termination optional */
  SCOND_NIM   = 2,               /**< For NIM signals:
                                      Trigger at -0.6V falling edge, termination fixed on */
  SCOND_MISC  = 3,               /**< Other signal type: Conditioning on, everything optional */
  SCOND_NONE  = 4                /**< No signal / invalid */
} TDC_SignalCond;


/** Type of output filter */
typedef enum {
  FILTER_NONE,                   /**< No filter */
  FILTER_MUTE,                   /**< Mute filter */
  FILTER_COINC,                  /**< Coincidence filter */
  FILTER_SYNC,                   /**< Sync filter */
  FILTER_INVALID                 /**< invalid */
} TDC_FilterType;


/** Type of generated timestamps */
typedef enum {
  SIM_FLAT,                      /**< Time diffs and channel numbers uniformly distributed.
                                      Requires 2 parameters: center, width for time diffs
                                      in TDC units. */
  SIM_NORMAL,                    /**< Time diffs normally distributed, channels uniformly.
                                      Requires 2 parameters: center, width for time diffs
                                      int TDC units. */
  SIM_NONE                       /**< No type / invalid */
} TDC_SimType;



/** Get Library Version
 *
 *  Returns the version number of the library.
 *  The integer part of the number denotes main releases, the fractional part
 *  Bugfixes without API change.
 *  @return Version number
 */
TDC_API double TDC_CC TDC_getVersion();


/** Get Error Message
 *
 *  Returns the error message corresponding to the given return code.
 *  @param  rc  A TDC return code
 *  @return Corresponding error message
 */
TDC_API const char * TDC_CC TDC_perror( int rc );


/** Get Time Base
 *
 *  Returns the time base (the resolution) of the TDC device.
 *  It is used as time unit by many other functions.
 *  @note
 *  In earlier versions, the function "double TDC_getTimebase()"
 *  could be called without a device connected. This is no longer
 *  possible, therefore the function prototype has been changed.
 *  @param  timebase  Output: Time base in seconds
 *  @return Error code
 */
TDC_API int TDC_CC TDC_getTimebase( double * timebase );


/** Initialize and Start
 *
 *  The function disconnects from any connected devices,
 *  initializes internal data and starts an event loop for
 *  data acquisition. It discovers devices connected to the computer,
 *  and connects to the first device that matches the given device ID.
 *  (The device ID is an identification number programmed by the user.)
 *
 *  The function should be called before any other TDC functions, except
 *  @ref TDC_getVersion and @ref TDC_getTimebase.
 *  Alternatively @ref TDC_discover and @ref TDC_connect can be used to
 *  handle multiple devices from one program.
 *
 *  If no device is found, the function returns @ref TDC_NotConnected.
 *  If that error code is ignored, the library falls into a demo mode where all
 *  parameter setting and getting calls return without error.
 *  @param   deviceId   Identification number of the device to connect.
 *                      The special value -1 matches all devices.
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_init( int deviceId );


/** Disconnect and uninitialize
 *
 *  Disconnects a connected device and stops the internal event loop.
 *  @return  TDC_Ok (never fails)
 */
TDC_API int TDC_CC TDC_deInit();


/** Get type of connected device
 *
 *  Returns the type of the device connected. Requires initialisation.
 *  @return  Type of the connected device; invalid if not connected.
 */
TDC_API TDC_DevType TDC_CC TDC_getDevType();


/** Check for HBT feature
 *
 *  Checks if the HBT feature is available for the connected device.
 *  This feature is necessary to use the functions of @ref tdchbt.h .
 *  @return  If the feature is available (1) or not (0)
 *
 *  @note That function is deprecated, please use @ref TDC_checkFeatures.
 */
TDC_API Bln32 TDC_CC TDC_checkFeatureHbt();


/** Check for lifetime feature
 *
 *  Checks if the Lifetime feature is available for the connected device.
 *  This feature is necessary to use the functions of @ref tdclifetm.h .
 *  @return  If the feature is available (1) or not (0)
 *
 *  @note That function is deprecated, please use @ref TDC_checkFeatures.
 */
TDC_API Bln32 TDC_CC TDC_checkFeatureLifeTime();


/** Check for device features
 *
 *  Retreives all available device features.
 *  @return  Array of flags of @ref TDC_FeatureFlag. If the flag is 1, the
 *           corresponding feature is available.
 */
TDC_API TDC_FeatureFlags TDC_CC TDC_checkFeatures();


/** Inquire Clock Sync State
 *
 *  Returns the current state of clock synchronisation.
 *  @param   locked  output: if the device's clock is locked to an external
 *                           source (a downlink or an external clock input)
 *  @param   uplink  output: if a clock uplink to another device has been established
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_getClockState( Bln32 * locked,
                                      Bln32 * uplink );


/** Retrieve Position in Chain
 *
 *  quTAG devices can be coupled in a chain to allow syncronized time tagging.
 *  The function returns the length of the chain and the position of the
 *  current device in it.
 *  @param  position     Output: position of the current device in the chain,
 *                               0 for isolated devices
 *  @param  length       Output: length the chain, 1 for isolated devices
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_getChainPosition( Int32 * position,
                                         Int32 * length );


/** Enable channel link
 *
 *  Allows to link two channels for higher time resolution / jitter reduction.
 *  If enabled, channels 2 and 4 are internally linked to 1 and 3; measurement
 *  results are averaged. Consequently only the inputs 1 and 3 can be used, 2 and 4
 *  will be disabled.
 *  The function requires the HiRes / Jitter upgrade option.
 *  @param  on  Channel link on (true) or off (false).
 *  @return  Error code. May fail if the feature is not available.
 */
TDC_API int TDC_CC TDC_setChannelLink( Bln32 on );


/** Retrieve channel link
 *
 *  Returns if the channel link is enabled; see @ref TDC_setChannelLink.
 *  @param  on  Output: channel link enabled (true) or disabled (false).
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_getChannelLink( Bln32 * on );


/** Enable five channel mode
 *
 *  Switches on/off the five channel mode (if available).
 *  In the four channel mode (default), the start input of the device (connector 0)
 *  is used to reset the internal clock. Those events themselves are not transmitted
 *  to the PC. In histograms etc. it is referred as channel 0.
 *  In the five channel mode, the start input is used as regular channel 5. The clock
 *  is never resetted.
 *  @param  on  Five channel mode (true) or four channel mode (false).
 *  @return  Error code. May fail if the feature is not available.
 */
TDC_API int TDC_CC TDC_setFiveChannelMode( Bln32 on );


/** Retrieve five channel mode
 *
 *  Returns if the five channel mode is active, see @ref TDC_setFiveChannelMode.
 *  @param  on  Output: Five channel mode (true) or four channel mode (false).
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_getFiveChannelMode( Bln32 * on );


/** Preselect histogram mode
 *
 *  In four channel mode (with start input active) start events are not transferred
 *  to the PC. It therefore can't decide if a stop event is the first or a
 *  subsequent one following the start. This setting allows to produce valid
 *  start stop histograms even in four channel mode by filtering subsequent stops
 *  already in the device. Note that start multistop histograms (HBT and Lifetime features)
 *  will also be affected.
 *  @param  single  preselect start stop (true) or start multistop histograms (false, default)
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_preselectSingleStop( Bln32 single );


/** Preselection mode
 *
 *  Retrieves the histogram preselection mode as controlled by @ref TDC_preselectSingleStop.
 *  @param  single  Output: start stop (true) or start multistop (false) mode
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_getSingleStopPreselection( Bln32 * single );


/** Internal Calibration
 *
 *  Starts the internal calibration procedure.
 *  The procedure takes some seconds and can't be stopped. During calibration,
 *  no time tags output.
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_startCalibration();


/** Inquire Calibration State
 *
 *  Returns if the internal calibration is active, see @ref TDC_startCalibration.
 *  @param   active  output: if the calibration procedure is currently running
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_getCalibrationState( Bln32 * active );


/** Enable TDC Channels
 *
 *  Selects the channels that contribute to the timestamp output stream.
 *  Bit 0 Enables the start input that doesn't trigger timestamps
 *  but may affect timestamps from other channels. In five channel mode,
 *  bit 0 has no effect.
 *  see @ref TDC_setFiveChannelMode.
 *  @param  channelMask  Bitfield with activation flags for every TDC channel.
 *                       (e.g. 5 means activate channels 0 and 2)
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_enableChannels( Int32 channelMask );


/** Retrieve active channels
 *
 *  Returns the channel mask as set with @ref TDC_enableChannels.
 *  @param  channelMask  Output: Bitfield with activation flags.
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_getChannelsEnabled( Int32 * channelMask );


/** Enable Markers
 *
 *  The markers are low resolution timestamps triggered over the GPIO port.
 *  Markers 0-3 are triggerd by the rising edges of the signals,
 *  markers 5-9 by the falling edges.  Marker 4 is a 1ms timer tick.
 *  If enabled, the Markers are included in timestamp
 *  protocol files with channel numbers 100-104 and 200-203.
 *  By default, all markers are deactivated.
 *  The function allows to enable or disable the single marker channels.
 *  @param  markerMask   Bitfield with activation flags for every marker channel.
 *                       (e.g. 5 means activate markers 0 and 2)
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_enableMarkers( Int32 markerMask );


/** Retrieve active markers
 *
 *  Returns the marker mask as set with @ref TDC_enableMarkers.
 *  @param  markerMask   Output: Bitfield with activation flags.
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_getMarkersEnabled( Int32 * markerMask );


/** Configure Signal Conditioning
 *
 *  Configures a channel's signal conditioning.
 *  Primarily, a conditioning type is selected. Depending on the type,
 *  the detailed settings may be relevant or ignored by the function,
 *  see @ref TDC_SignalCond. For full access to the details use
 *  @ref SCOND_MISC as type.
 *  @param  channel      Number of the input channel to configure.
 *  @param  conditioning Type of signal conditioning. By default it is @ref SCOND_MISC
 *  @param  edge         Selects the signal edge that is processed as an event:
 *                       rising (1, default) or falling (0)
 *  @param  threshold    Voltage threshold that is used to identify events, in V.
 *                       Allowed range: -2 ... 3V; default value: 1V;
 *                       internal resolution: 1.47mV
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_configureSignalConditioning( Int32          channel,
                                                    TDC_SignalCond conditioning,
                                                    Bln32          edge,
                                                    double         threshold );


/** Read back Signal Conditioning Parameters
 *
 *  Reads back the signal conditioning parameters. These are the parameters
 *  that are actually in effect, they may differ from those set by
 *  @ref TDC_configureSignalConditioning in two cases:
 *  1. Depending on the signal type the parameter may be preset and therefore
 *  ignored in the function call. 2. If the signal conditioning is completely off,
 *  the constant parameters of the direct signal path are returned.
 *  @param  channel      Number of the input channel to read out.
 *  @param  edge         The signal edge that is processed as an event:
 *                       rising (1) or falling (0)
 *  @param  threshold    Voltage threshold that is used to identify events, in V.
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_getSignalConditioning( Int32    channel,
                                              Bln32  * edge,
                                              double * threshold );


/** Configure Signal Conditioning Input Divider
 *
 *  Configures the input divider of channel 0.
 *  @param  divider     Number of events to skip before one is passed + 1.
 *                      Only the following values are allowed: 1, 2, 4, 8
 *  @param  reconstruct Reconstruct the skipped events in software.
 *  @return             Error code
 */
TDC_API int TDC_CC TDC_configureSyncDivider( Int32 divider,
                                             Bln32 reconstruct );


/** Read back Signal Conditioning Input Divider
 *
 *  Reads back the input divider configuration of channel 0, see
 *  @ref TDC_configureSyncDivider.
 *  @param  divider     Output: Number of events to skip before one is passed + 1.
 *  @param  reconstruct Output: Reconstruct the skipped events in software.
 *  @return             Error code
 */
TDC_API int TDC_CC TDC_getSyncDivider( Int32 * divider,
                                       Bln32 * reconstruct );


/** Set Coincidence Window
 *
 *  Sets the coincidence time window for the integrated coincidence counting.
 *  @param  coincWin   Coincidence window in bins, Range = 0 ... 2000000000
 *                     see @ref TDC_getTimebase
 *  @return            Error code
 */
TDC_API int TDC_CC TDC_setCoincidenceWindow( Int32 coincWin );


/** Configure Output Filters
 *
 *  Configures filters for the output (and data transfer) of time tags.
 *  Filtered events are registered by the device and processed for coincidence
 *  detection, but not transferred to the PC.
 *  @param  channel     Number of the input channel to configure.
 *                      Channel 0 can't be filtered (but channel 5, if available).
 *  @param  type        Type of the filter. By default, no filter is active.
 *  @param  chMask      Bitfield to select channels for "Coinc" and "Sync" filters.
 *                      (e.g. 6 means correlate with channels 1 and 2).
 *                      Channel 0 (start) can't be used here (but channel 5, if available).
 *  @return             Error code
 */
TDC_API int TDC_CC TDC_configureFilter( Int32          channel,
                                        TDC_FilterType type,
                                        Int32          chMask );


/** Read back Output Filters
 *
 *  Reads back the output filtering parameters.
 *  @param  channel     Number of the input channel to read out.
 *  @param  type        Type of the filter.
 *  @param  chMask      Bitfield to select channels for "Coinc" and "Sync" filters.
 *  @return             Error code
 */
TDC_API int TDC_CC TDC_getFilter( Int32            channel,
                                  TDC_FilterType * type,
                                  Int32          * chMask );


/** Set Exposure Time
 *
 *  Sets the exposure time (or integration time) of the internal coincidence
 *  counters.
 *  @param  expTime   Exposure time in ms, Range = 0 ... 65535
 *  @return           Error code
 */
TDC_API int TDC_CC TDC_setExposureTime( Int32 expTime );


/** Read Back Device Parameters
 *
 *  Reads the device parameters back from the device. All Parameters are
 *  output parameters but may be NULL-Pointers if the result is not required.
 *  @param  coincWin    Output: Coincidence window, see @ref TDC_setCoincidenceWindow
 *  @param  expTime     Output: Exposure time, see @ref TDC_setExposureTime
 *  @return             Error code
 */
TDC_API int TDC_CC TDC_getDeviceParams( Int32 * coincWin,
                                        Int32 * expTime   );


/** Set Channel Delay Times
 *
 *  Different signal runtimes cause relative delay times of the signals
 *  at different channels. The function allows to configure a delay per
 *  channel that will be compensated including the changed sorting of events.
 *  If not set, all delays are 0. The compensation is carried out in hardware.
 *  @param  delays  Input: channel delays [ps], Range=-100ns ... 100ns
 *                  The array must have at least 5 elements.
 *                  Enter 0 for unused channels.
 *                  Using a NULL pointer sets all delays to 0.
 *  @return         Error code
 */
TDC_API int TDC_CC TDC_setChannelDelays( const Int32 * delays );


/** Read back Channel Delay Times
 *
 *  Reads back the delay times as set with @ref TDC_setChannelDelays.
 *  @param  delays  Ouput: channel delays, in TDC units.
 *                  The array must have at least 8 elements.
 *  @return         Error code
 */
TDC_API int TDC_CC TDC_getChannelDelays( Int32 * delays );


/** Set Dead Time
 *
 *  Sets a dead time for the specified input channel. After detecting an event,
 *  all subsequent events on the same channel are ignored for this time.
 *  @param  channel Iput Channel to be configured (use 0 for output channel 5)
 *  @param  dTime   Dead time for the specified channel, in ps.
 *                  Must be positive.
 *  @return         Error code
 */
TDC_API int TDC_CC TDC_setDeadTime( Int32 channel,
                                    Int32 dTime );


/** Read back Dead Time
 *
 *  Reads back the dead time as set with @ref TDC_setDeadTime.
 *  @param  channel Input channel to read out
 *  @param  dTime   Ouput: dead time of the specified channel, in ps
 *  @return         Error code
 */
TDC_API int TDC_CC TDC_getDeadTime( Int32 channel,
                                    Int32 * dTime );


/** Configure Selftest
 *
 *  The function enables the generation of test signals in the device.
 *  @param  channelMask  Bitfield that selects the channels to be fired internally
 *                       (e.g. 5 means signal generation on channels 1 and 3)
 *  @param  period       Period of all test singals in units of 5ns, Range = 2 ... 60
 *  @param  burstSize    Number of periods in a burst, Range = 1 ... 65535
 *  @param  burstDist    Distance between bursts in units of 20ns, Range = 0 ... 10000
 *  @return              Error code
 */
TDC_API int TDC_CC TDC_configureSelftest( Int32 channelMask,
                                          Int32 period,
                                          Int32 burstSize,
                                          Int32 burstDist );

/** Check for data loss
 *
 *  Timestamps of events detected by the device can get lost if their rate
 *  is too high for the USB interface or if the PC is unable to receive the
 *  data in time. The TDC recognizes this situation and signals it to the
 *  PC (with high priority).
 *
 *  The function checks if a data loss situation is currently detected or if
 *  it has been latched since the last call. If you are only interested in
 *  the current situation, call the function twice; the first call will
 *  delete the latch.
 *  @param lost      Output: Current and latched data loss state.
 *  @return          Error code
 */
TDC_API int TDC_CC TDC_getDataLost( Bln32 * lost );


/** Set Timestamp Buffer Size
 *
 *  Sets the size of a ring buffer that stores the timestamps of the last
 *  detected events. The buffer's contents can be retrieved with
 *  TDC_getLastTimestamps. By default, the buffersize is 0.
 *  When the function is called, the buffer is cleared.
 *  @param size      Buffer size; Range = 1 ... 1000000
 *  @return          Error code
 */
TDC_API int TDC_CC TDC_setTimestampBufferSize( Int32 size );


/** Read back Timestamp Buffer Size
 *
 *  Reads back the buffer size as set by @ref TDC_setTimestampBufferSize.
 *  @param size      Output: Buffer size;
 *  @return          Error code
 */
TDC_API int TDC_CC TDC_getTimestampBufferSize( Int32 * size );


/** Enable Physical Input
 *
 *  Enables input from the physical channels of the TDC device or the
 *  internal selftest. If disabled, the software ignores those "real" events,
 *  the device and its coincidence counters are not affected.
 *  By default the input is enabled.
 *
 *  When working with software input (@ref TDC_readTimestamps,
 *  @ref TDC_generateTimestamps, ...) this function can be used to avoid
 *  real and simulated input to be mixed up.
 *  @param enable    Enable (1) or disable (0) TDC input
 *  @return          Error code
 */
TDC_API int TDC_CC TDC_enableTdcInput( Bln32 enable );


/** Freeze internal Buffers
 *
 *  The function can be used to freeze the internal buffers,
 *  allowing to retrieve multiple histograms with the same
 *  integration time. When frozen, no more events are added to
 *  the built-in histograms and timestamp buffer. The coincidence
 *  counters are not affected. Initially, the buffers are not frozen.
 *  All types of histograms calculated by software are affected.
 *  @param freeze    freeze (1) or activate (0) the buffers
 *  @return          Error code
 */
TDC_API int TDC_CC TDC_freezeBuffers( Bln32 freeze );


/** Retrieve Coincidence Counters
 *
 *  Retrieves the most recent values of the built-in coincidence counters.
 *  The coincidence counters are not accumulated, i.e. the counter values for
 *  the last exposure (see @ref TDC_setExposureTime ) are returned.
 *
 *  The array contains count rates for all 5 channels, and rates for
 *  coincidences of events detected on different channels.
 *  Events are coincident if they happen within the coincidence window
 *  (see @ref TDC_setCoincidenceWindow ).
 *  @param data      Output: Counter Values. The array must have at least
 *                   31 elements. The Counters come in the following order:
 *                   0(5), 1, 2, 3, 4, 1/2, 1/3, 2/3, 1/4, 2/4, 3/4, 1/5, 2/5, 3/5, 4/5,
 *                   1/2/3, 1/2/4, 1/3/4, 2/3/4, 1/2/5, 1/3/5, 2/3/5, 1/4/5, 2/4/5, 3/4/5,
 *                   1/2/3/4, 1/2/3/5, 1/2/4/5, 1/3/4/5, 2/3/4/5, 1/2/3/4/5
 *  @param updates   Output: Number of data updates by the device since the last call.
 *                   Pointer may be NULL.
 *  @return          @ref TDC_Ok (never fails)
 */
TDC_API int TDC_CC TDC_getCoincCounters( Int32 * data, Int32 * updates );


/** Retrieve Last Timestamp Values
 *
 *  Retrieves the timestamp values of the last n detected events on all
 *  TDC channels. The buffer size must have been set with
 *  @ref TDC_setTimestampBufferSize , otherwise 0 data will be returned.
 *  @param reset      If the data should be cleared after retrieving.
 *  @param timestamps Output: Timestamps of the last events in base units,
 *                    see @ref TDC_getTimebase .
 *                    The array must have at least size elements,
 *                    see @ref TDC_setTimestampBufferSize .
 *                    A NULL pointer is allowed to ignore the data.
 *  @param channels   Output: Numbers of the channels where the events have been
 *                    detected. Every array element belongs to the timestamp
 *                    with the same index. Range is 0...7 for channels 1...8.
 *                    The array must have at least size elements,
 *                    see @ref TDC_setTimestampBufferSize .
 *                    A NULL pointer is allowed to ignore the data.
 *  @param valid      Output: Number of valid entries in the above arrays.
 *                    May be less than the buffer size if the buffer has been cleared.
 *  @return           @ref TDC_Ok (never fails)
 */
TDC_API int TDC_CC TDC_getLastTimestamps( Bln32   reset,
                                          Int64 * timestamps,
                                          Uint8 * channels,
                                          Int32 * valid );


/** Write Timestamp Values to File
 *
 *  Starts or stops writing the timestamp values to a file continously.
 *  The timestamps written are already corrected by the detector delays,
 *  see @ref TDC_setChannelDelays.
 *
 *  Timestamps come in base units, see @ref TDC_getTimebase;
 *  channel Numbers start with 0 in binary formats, with 1 in ASCII.
 *  A channel number of (100 + Marker Number) is associated with marker
 *  input events; 104 is a millisecond tick.
 *  The follwing file formats are available:
 *
 *  @li ASCII:      Timestamp values (int base units) and channel numbers
 *                  as decimal values in two comma separated columns.
 *                  Channel numbers range from 1 to 8 in this format.
 *
 *  @li binary:     A binary header of 40 bytes, records of 10 bytes,
 *                  8 bytes for the timestamp, 2 for the channel number,
 *                  stored in little endian (Intel) byte order.
 *
 *  @li compressed: A binary header of 40 bytes, records of 40 bits (5 bytes),
 *                  37 bits for the timestamp, 3 for the channel number,
 *                  stored in little endian (Intel) byte order.
 *                  No marker events and timer ticks are stored.
 *
 *  @li raw:        Like binary, but without header. Provided for backward
 *                  compatiblity.
 *
 *  The header of the binary formats is dedicated for use in @ref TDC_readTimestamps;
 *  it should be skipped when evaluating with external tools.
 *
 *  Writing in the ASCII format requires much more CPU power and about twice as much
 *  disk space than using the binary format. The compressed format again saves
 *  half of the disk space, allowing higher event rates with not-so-fast disks.
 *  The Timestamps are truncated in this format leading to an overflow every 11 s.
 *  It is possible to convert a binary file to ASCII format offline by using this
 *  function together with @ref TDC_readTimestamps.
 *  
 *  If the specified file exists it will be overwritten.
 *  The function checks if the file can be opened; write errors that occur
 *  later in the actual writing process (disk full e.g.) will not be reported.
 *  @param filename   Name of the file to use. To stop writing, call the function with
 *                    an empty or null filename.
 *  @param format     Output format. Meaningless if writing is to be stopped.
 *                    FORMAT_NONE also stops writing.
 *  @return           Error code
 */
TDC_API int TDC_CC TDC_writeTimestamps( const char *   filename,
                                        TDC_FileFormat format );


/** Input Synthetic Timestamps
 *
 *  The function allows to input synthetic timestamps for demonstration
 *  and simulation purposes. Timesamps are processed just like "raw"
 *  data from a real device.
 *  is connected; otherwise it will return an error.
 *  @param timestamps Input: Array of timestamps to process.
 *                    The timestamps should be in strictly increasing order,
 *                    otherwise some functions will fail.
 *  @param channels   Input: Array of corresponding channel numbers.
 *  @param count      Number of valid elements in both arrays.
 *  @return           Error code
 */
TDC_API int TDC_CC TDC_inputTimestamps( const Int64 * timestamps,
                                        const Uint8 * channels,
                                        Int32         count );


/** Read Timestamps
 *
 *  The function allows to read timestamps from file for demonstration or
 *  delayed processing. It works only with files in a binary format
 *  (see @ref TDC_FileFormat). It can read files with or without the
 *  40 bytes header. When the header is present in demo mode (i.e. without
 *  a device connected), the HBT and Lifetime options from the source
 *  device come into effect.
 *
 *  In the compressed format, the reconstruction of the original timestamps
 *  can't be guaranteed.  Detector delays (see @ref TDC_setChannelDelays)
 *  are @em not compensated in this function because this is already
 *  done in @ref TDC_writeTimestamps.
 *  @param filename   Name of the binary input file
 *  @param format     Input format. Only binary formats are valid.
 *                    If the file has a valid header, the parameter is not used;
 *                    the format is retrieved from the file itself.
 *  @return           Error code
 */
TDC_API int TDC_CC TDC_readTimestamps( const char *   filename,
                                       TDC_FileFormat format );


/** Generate Timestamps
 *
 *  The function generates synthetic timestamps for demonstration
 *  and simulation purposes. Timesamps are processed just like "raw"
 *  data from a real device.
 *
 *  The channel mask (see @ref TDC_enableChannels) is considered. At least
 *  one channel has to be enabled!
 *  @param type     Type of time diff distribution
 *  @param par      Type specific parameter set. Parameters should be
 *                  chosen so that most time diffs are positive.
 *                  Negative diffs are dropped.
 *  @param count    Number of timestamps to generate
 *  @return         Error code
 */
TDC_API int TDC_CC TDC_generateTimestamps( TDC_SimType type,
                                           double *    par,
                                           Int32       count );

#endif
