/******************************************************************************
 *
 *  Project:        quTAG Control Library
 *
 *  Filename:       tdcstartstop.h
 *
 *  Purpose:        Start Stop Histograms
 *
 *  Author:         NHands GmbH & Co KG
 */
/*****************************************************************************/
/** @file tdcstartstop.h
 *  @brief Start Stop Histograms
 *
 *  The header defines functions that process TDC data to a set of start stop
 *  histograms. Every histogram has a start and stop input channel; histograms
 *  can be configured for all combinations of those.
 *  Only the first stop event after a start is counted.
 *  The histograms are calculated on the PC.
 *
 *  Use the functions of @ref tdcbase.h to control the device.
 *  @ref TDC_setHistogramParams allows to configure the histogram functions,
 *  @ref TDC_getHistogram is used to retrieve the data.
 *  If a set of data is required that belongs to the same time, use
 *  @ref TDC_freezeBuffers to synchronize.
 */
/*****************************************************************************/
/* $Id: tdcstartstop.h,v 1.4 2019/05/13 15:52:08 trurl Exp $ */

#ifndef __TDCSTARTSTOP_H
#define __TDCSTARTSTOP_H

#include "tdcdecl.h"


/** Enable Start Stop Histograms
 *
 *  Enables the calculation of start stop histograms. When enabled, all incoming
 *  events contribute to the histograms. When disabled, all corresponding functions
 *  are unavailable. The function implicitly clears the histograms.
 *  Use @ref TDC_freezeBuffers to interrupt the accumulation of events without
 *  clearing the functions and @ref TDC_clearAllHistograms to clear without
 *  interrupt.
 *  @param enable  Enable or disable 
 *  @return        Error code
 */
TDC_API int TDC_CC TDC_enableStartStop( Bln32 enable );


/** Add a histogram
 *
 *  Adds or removes a histogram with specified start and stop channels.
 *  All time differences beween a start and the first following stop event
 *  will contribute to the histogram.
 *  The channel numbers are limited to @ref TDC_MAX_CHANNEL_NO
 *  (to allow synchronized devices).
 *  A channel independent histogram that integrates all events is always
 *  provided and hasn't to be added, see @ref TDC_getHistogram.
 *  @param startCh channel number of the histogram's start channel, Range = 0...20
 *  @param stopCh  channel number of the histogram's stop channel, Range = 1...20
 *  @param add     add (true) or remove (false) the histogram. If an
 *                 existing histogram is added or a missing
 *                 histogram is removed, nothing happens.
 *  @return        Error code
 */
TDC_API int TDC_CC TDC_addHistogram( Int32 startCh,
                                     Int32 stopCh,
                                     Bln32 add );


/** Set Start Stop Histogram Parameters
 *
 *  Sets parameters for the internally generated start stop histograms.
 *  If the function is not called, default values are in place.
 *  When the function is called, all collected histogram data are cleared.
 *  @param binWidth  Width of the histogram bins in units of the TDC Time Base,
 *                   see @ref TDC_getTimebase . Range = 1 ... 1000000, default = 1.
 *  @param binCount  Number of bins in the histogram buffers.
 *                   Range = 2 ... 1000000, default = 10000.
 *  @return          Error code
 */
TDC_API int TDC_CC TDC_setHistogramParams( Int32 binWidth,
                                           Int32 binCount );


/** Read back Start Stop Histogram Parameters
 *
 *  Reads back the parameters that have been set with @ref TDC_setHistogramParams.
 *  All output parameters may be NULL to ignore the value.
 *  @param binWidth  Output: Width of the histograms bins.
 *  @param binCount  Output: Number of bins in the histogram buffers.
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_getHistogramParams( Int32 * binWidth,
                                           Int32 * binCount );


/** Clear Start Stop Histograms
 *
 *  Clears all internally generated start stop histograms,
 *  i.e. all bins are set to 0.
 *  @return  Error code
 */
TDC_API int TDC_CC TDC_clearAllHistograms();


/** Retrieve Start Stop Histogram
 *
 *  Retrieves one of the start stop histograms accumulated internally.
 *  Besides the histograms that have been configured using
 *  @ref TDC_addHistogram, one histogram is provided for the time
 *  differences of every event the device has detected (channel independent).
 *  @param chStart   Start channel of the channel pair.
 *                   If this parameter is negative,
 *                   the channel independent histogram is retrieved.
 *  @param chStop    Stop channel of the channel pair. 0 or negative
 *                   encode for the channel independent histogram.
 *  @param reset     If the histogram should be cleared after retrieving.
 *  @param data      Output: Histogram data. The array must have at least
 *                   binCount (see @ref TDC_setHistogramParams ) elements.
 *                   A NULL pointer is allowed to ignore the data.
 *  @param count     Output: Total number of time diffs in the histogram.
 *                   A NULL pointer is allowed to ignore the data.
 *  @param tooSmall  Output: Number of time diffs that were smaller
 *                   than the smallest histogram bin.
 *                   A NULL pointer is allowed to ignore the data.
 *  @param tooLarge  Output: Number of time diffs that were bigger
 *                   than the biggest histogram bin.
 *                   A NULL pointer is allowed to ignore the data.
 *  @param starts    Output: Number of events on the start channel
 *                   contributing to the histogram.
 *                   A NULL pointer is allowed to ignore the data.
 *  @param stops     Output: Number of events on the stop channel
 *                   contributing to the histogram.
 *                   A NULL pointer is allowed to ignore the data.
 *  @param expTime   Output: Total exposure time for the histogram: the time
 *                   difference between the first and the last event
 *                   that contribute to the histogram. In timebase units.
 *                   A NULL pointer is allowed to ignore the data.
 *  @return  @ref TDC_Ok
 */
TDC_API int TDC_CC TDC_getHistogram( Int32 chStart,
                                     Int32 chStop,
                                     Bln32 reset,
                                     Int32 * data,
                                     Int32 * count,
                                     Int32 * tooSmall,
                                     Int32 * tooLarge,
                                     Int32 * starts,
                                     Int32 * stops,
                                     Int64 * expTime );

#endif
