//*****************************************************************************
//
//  Project:        quTAG User Library
//
//  Filename:       example.cs
//
//  Purpose:        Minimal example for C#
//
//  Author:         N-Hands GmbH & Co KG
//
//*****************************************************************************
// $Id: example0.cs,v 1.1 2019/04/02 15:58:19 trurl Exp $

using System;
using System.Threading;
using System.Runtime.InteropServices;

namespace quTagExample
{
    class Example
    {
        [DllImport("tdcbase.dll")]
        unsafe public static extern IntPtr TDC_perror(Int32 returnCode);
        [DllImport("tdcbase.dll")]
        unsafe public static extern Int32 TDC_init(Int32 id);
        [DllImport("tdcbase.dll")]
        unsafe public static extern Int32 TDC_deInit();
        [DllImport("tdcbase.dll")]
        unsafe public static extern Int32 TDC_enableChannels(Int32 channelMask);
        [DllImport("tdcbase.dll")]
        unsafe public static extern Int32 TDC_setExposureTime(Int32 expTime);
        [DllImport("tdcbase.dll")]
        unsafe public static extern Int32 TDC_setCoincidenceWindow(Int32 window);
        [DllImport("tdcbase.dll")]
        unsafe public static extern Int32 TDC_getCoincCounters(Int32 * data, out Int32 updates);

        const Int32 TDC_Ok             =  0;   // quTAG return codes; see tdcdecl.h
        const Int32 TDC_Error          = -1;
        const Int32 TDC_Timeout        =  1;
        const Int32 TDC_NotConnected   =  2;
        const Int32 TDC_DriverError    =  3;
        const Int32 TDC_DeviceLocked   =  7;
        const Int32 TDC_Unknown        =  8;
        const Int32 TDC_NoDevice       =  9;
        const Int32 TDC_OutOfRange     = 10;
        const Int32 TDC_CantOpen       = 11;
        const Int32 TDC_NotInitialized = 12;
        const Int32 TDC_NotEnabled     = 13;
        const Int32 TDC_NotAvailable   = 14;

 
        // Check error code; abort on error
        unsafe static void checkError(String context, int code)
        {
            if (code != TDC_Ok)
            {
                String msg = Marshal.PtrToStringAnsi(TDC_perror(code));
                throw new Exception("Error calling " + context + ": " + msg);
            }
        }

        // Retrieve Positions using two methods and different sample times
        unsafe static void Main(string[] args)
        {
            Int32  rc = TDC_Ok;
            Console.WriteLine("quTAG example program");
            try
            {
                // Discover devices and select the first one
                rc = TDC_init(-1);
                checkError("TDC_init", rc);

                // Set Parameters
                rc = TDC_setCoincidenceWindow(10000);  // 10ns
                checkError("TDC_setCoincidenceWindow", rc);
                rc = TDC_setExposureTime(100);         // 100ms
                checkError("TDC_setExposureTime", rc);

                // Poll coinc. counters
                Console.WriteLine("Coincidence Counters");
                for (UInt32 i = 0; i < 20; ++i)
                {
                    Int32 updates  = 0;
                    IntPtr dataArr = Marshal.AllocHGlobal(Marshal.SizeOf(typeof(Int32))*31);
                    Int32  * dPtr  = (Int32 *)  dataArr.ToPointer();
                    rc = TDC_getCoincCounters(dPtr, out updates);
                    checkError("TDC_getCoincCounters", rc);
                    if (updates > 1)
                    {
                        Console.WriteLine("Missed {0} samples", updates - 1);
                    }
                    if (updates > 0)
                    {
                        Console.WriteLine("0:{0} 1:{1} 2:{2} 3:{3}  1-2:{4} 1-3:{5} 1-2-3:{6}",
                                dPtr[0], dPtr[1], dPtr[2], dPtr[3], dPtr[5], dPtr[6], dPtr[15]);
                    }
                    Marshal.FreeHGlobal(dataArr);
                    Thread.Sleep(90);                // below 100ms - don't miss any sample
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e.Message);
            }

            TDC_deInit();
        }
    }
}
