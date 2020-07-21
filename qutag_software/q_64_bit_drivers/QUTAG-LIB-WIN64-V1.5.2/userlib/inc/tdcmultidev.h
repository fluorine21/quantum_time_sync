/******************************************************************************
 *
 *  Project:        TDC Control Library
 *
 *  Filename:       tdcmultidev.h
 *
 *  Purpose:        Multi Device Handling for TDC devices
 *
 *  Author:         NHands GmbH & Co KG
 */
/*****************************************************************************/
/** @file tdcmultidev.h
 *  @brief Multi Device Handling for TDC devices
 *
 *  These functions allow to access multiple TDC devices at the same time
 *  from one program. The functions are alternatives to @ref TDC_init
 *  and @ref TDC_deInit.
 *
 *  Use @ref TDC_discover to find the connected devices and
 *  @ref TDC_getDeviceInfo inspect them.
 *  A control connection to a device can be established with
 *  @ref TDC_connect. Use
 *  @ref TDC_addressDevice to address the following commands to
 *  a specific connected device.
 *  To terminate the session, disconnect all devices using
 *  @ref TDC_disconnect (@ref TDC_deInit does that job also).
 */
/*****************************************************************************/
/* $Id: tdcmultidev.h,v 1.1 2017/12/14 12:43:52 trurl Exp $ */

#ifndef __TDCMULTIDEV_H
#define __TDCMULTIDEV_H

#include "tdcdecl.h"

/** Find Devices
 *
 *  Initializes the library and searches for connected TDC devices.
 *  All existing device connections are closed.
 *
 *  The function is a precondition for all other function calls.
 *  Found devices can be inspected with @ref TDC_getDeviceInfo and
 *  connected by @ref TDC_connect.
 *  This procedure it is meant as an alternative to @ref TDC_init.
 *  @param  devCount  Output: Number of devices found
 *  @return Error code
 */
TDC_API int TDC_CC TDC_discover( unsigned int * devCount );


/** Inspect a Device
 *
 *  Returns some informations about a device that has been found
 *  by @ref TDC_discover. The device doesn't have to be connected.
 *  The pointers to the output variables may be NULL to ignore the value.
 *  @param  devNo     Number of the device to inspect, 0 &le; devNo < devCount.
 *  @param  type      Output: Type of the device
 *  @param  id        Output: Device ID as programmed by the user
 *  @param  serialNo  Output: Serial number of the device. The string buffer must
 *                            be at least 16 bytes long.
 *  @param  connected Output: If the device is connected by @ref TDC_connect
 *  @return Error code
 */
TDC_API int TDC_CC TDC_getDeviceInfo( unsigned int  devNo,
                                      TDC_DevType * type,
                                      int         * id,
                                      char        * serialNo,
                                      Bln32       * connected );


/** Connect to a Device
 *
 *  Establishes a connection to the selected device.
 *  This is a precondition for all function calls that affect that
 *  specific device, in particular for @ref TDC_addressDevice.
 *  The call implicitly addresses the device.
 *  @param  devNo     Number of the device to connect to, 0 &le; devNo < devCount.
 *  @return Error code
 */
TDC_API int TDC_CC TDC_connect( unsigned int devNo );


/** Disconnect from a Device
 *
 *  Closes the connection to the selected device.
 *  If the device was adressed, a new address has to be set (@ref TDC_addressDevice).
 *  To disconnect from all devices at the same time, @ref TDC_deInit can be used.
 *  @param  devNo     Number of the device to disconnect from, 0 &le; devNo < devCount.
 *  @return Error code
 */
TDC_API int TDC_CC TDC_disconnect( unsigned int devNo );


/** Address a Device
 *
 *  Selects a device as the target of the following function calls.
 *  All functions are affected that don't have a device number as input parameter.
 *  @param  devNo     Number of the device to address, 0 &le; devNo < devCount.
 *  @return Error code
 */
TDC_API int TDC_CC TDC_addressDevice( unsigned int devNo );


/** Current Device Address
 *
 *  Retrieves the number of the currently addressed device. Returns error
 *  if no device is connected.
 *  @param  devNo     Output: Number of the addressed device
 *  @return Error code
 */
TDC_API int TDC_CC TDC_getCurrentAddress( unsigned int * devNo );

#endif
