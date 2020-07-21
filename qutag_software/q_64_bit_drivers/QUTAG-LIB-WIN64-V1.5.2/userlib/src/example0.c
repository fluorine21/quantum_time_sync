/*******************************************************************************
 *
 *  Project:        quTAG User Library
 *
 *  Filename:       example0.c
 *
 *  Purpose:        Simple example for use of tdcbase lib
 *                  timestamps, counters, and start stop histograms
 *
 *  Author:         NHands GmbH & Co KG
 *
 *******************************************************************************/
/* $Id: example0.c,v 1.3 2019/11/29 10:54:10 trurl Exp $ */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>              /* for exit() */
#include "tdcbase.h"
#include "tdcstartstop.h"

#ifdef unix
#include <unistd.h>
#define SLEEP(x) usleep(x*1000)
#else
/* windows.h for Sleep */
#include <windows.h>
#define SLEEP(x) Sleep(x)
#endif

#define HIST_BINCOUNT        40  /* Histogram size */
#define HIST_BINWIDTH    500000  /* Histogram bin width .5us */
#define TIMESTAMP_COUNT   10000  /* Timestamp buffer size */
#define COLLECT_TIME         50  /* Time [ms] for data acquisition per round */
#define COLLECT_ROUNDS      100  /* Number of data acquisition rounds */


/* Check return code and exit on error */
static void checkRc( const char * fctname, int rc )
{
  if ( rc ) {
    printf( ">>> %s: %s\n", fctname, TDC_perror( rc ) );
    /* Don't quit on "not connected" to allow for demo mode */
    if ( rc != TDC_NotConnected ) {
      TDC_deInit();
      exit( 1 );
    }
  }
}


/*
 * Initialize and start TDC, wait and get some data
 * and retrieve start stop histograms
 * selftest: generate data with hardware selftest
 * flatgen:  generate data by software, uniform distribution
 * nomrgen:  generate data by software, normal distribution
 */
static void run( int selftest, int flatgen, int normgen )
{
  Int32 rc, count, tooSmall, tooBig, tsValid, eventsA, eventsB, i, j;
  Int64 expTime, lastTimestamp = 0;
  Int32 hist1[HIST_BINCOUNT], hist2[HIST_BINCOUNT];
  Int64 timestamps[TIMESTAMP_COUNT];
  Uit8  channels[TIMESTAMP_COUNT];
  int   coincCnt[TDC_COINC_CHANNELS];
  double bin2ns = 0, timeBase = 0.;
  double simPara[2] = { 1000., 1000. };                /* center,width = 81ns */
  printf( ">>> tdcbase version: %f\n", TDC_getVersion() );

  /* Initialize & start
   */
  rc = TDC_init( -1 );                                 /* Accept every device */
  checkRc( "TDC_init", rc );
  rc = TDC_getTimebase( &timeBase );
  checkRc( "TDC_getTimebase", rc );
  printf( ">>> timebase: %g ps\n", timeBase * 1.e12 );
  bin2ns = HIST_BINWIDTH * timeBase * 1.e9;            /* Width of a bin in nanoseconds */
  rc = TDC_enableChannels( 0xff );                     /* Use all channels */
  checkRc( "TDC_enableChannels", rc );
  rc = TDC_enableStartStop( 1 );                       /* Enable start stop histograms */
  checkRc( "TDC_enableStartStop", rc );
  rc = TDC_addHistogram( 1, 2, 1 );
  checkRc( "TDC_addHistogram", rc );
  rc = TDC_addHistogram( 2, 1, 1 );
  checkRc( "TDC_addHistogram", rc );
  rc = TDC_setHistogramParams( HIST_BINWIDTH, HIST_BINCOUNT );
  checkRc( "TDC_setHistogramParams", rc );
  rc = TDC_setTimestampBufferSize( TIMESTAMP_COUNT );
  checkRc( "TDC_setTimestampBufferSize", rc );
  rc = TDC_setExposureTime( 100 );
  checkRc( "TDC_setExposureTime", rc );
  rc = TDC_setCoincidenceWindow( 10000 ); /* 10ns */
  checkRc( "TDC_setCoincidenceWindow", rc );

  if ( selftest ) {
    /* Configure internal signal generator:
     * Ch. 1 + 2, signal period 80ns, bursts of 3 Periods, distance betw. bursts 800ns
     * Expecting peaks at 80ns and 800 - 2*80 = 640ns
     */
    rc = TDC_configureSelftest( 6, 4, 3, 10 );
    checkRc( "TDC_configureSelftest", rc );
  }

  rc = TDC_clearAllHistograms();
  checkRc( "TDC_clearAllHistograms", rc );

  /* wait some seconds, collect data, and check samples for errors that should never occur
   */
  printf( ">>> Collecting...\n" );
  count = 0;
  for ( i = 0; i < COLLECT_ROUNDS; ++i ) {
    TDC_getLastTimestamps( 1, timestamps, channels, &tsValid );
    if ( tsValid ) {
      count += tsValid;
      lastTimestamp = timestamps[tsValid - 1];
    }

    SLEEP( COLLECT_TIME );
    if ( flatgen ) {
      rc = TDC_generateTimestamps( SIM_FLAT, simPara, 100 );
      checkRc( "TDC_generateTimestamps", rc );
    }
    if ( normgen ) {
      rc = TDC_generateTimestamps( SIM_NORMAL, simPara, 100 );
      checkRc( "TDC_generateTimestamps", rc );
    }
  }

  /* Retreive timestamps and print some of them
   */
  TDC_freezeBuffers( 1 );                              /* Ensure consistent histograms */
  TDC_getLastTimestamps( 1, timestamps, channels, &tsValid );
  printf( ">>> Timestamps: buffered=%d\n", tsValid );
  for ( i = 0; i < 10; ++i ) {
    printf( ">>> " );
    for ( j = 0; j < 5; j++ ) {
      printf( "%"LLXFORMAT" (%d)  ", timestamps[5*i+j], channels[5*i+j] );
    }
    printf( "\n" );
  }
  printf( "\n" );

  /* Retreive and print coincidence counters
   */
  TDC_getCoincCounters( coincCnt, NULL );
  printf( ">>> CoincCounters:  " );
  for ( i = 0; i < TDC_COINC_CHANNELS; ++i ) {
    printf( "%d ", coincCnt[i] );
  }
  printf( "\n" );

  /* Retreive and print selected start stop histograms
   */
  rc = TDC_getHistogram( -1,0,1, hist1, &count, &tooSmall, &tooBig, &eventsA, &eventsB, &expTime );
  checkRc( "TDC_getHistogram", rc );
  printf( ">>> Histogram global:  valid=%d tooSmall=%d tooBig=%d\n", count, tooSmall, tooBig );
  printf( ">>>                    starts=%d  stops=%d expTime=%g s\n", eventsA, eventsB,
          expTime * timeBase );
  rc = TDC_getHistogram( 1, 2, 1, hist2, &count, &tooSmall, &tooBig, &eventsA, &eventsB, &expTime );
  checkRc( "TDC_getHistogram", rc );
  printf( ">>> Histogram 1-2:     valid=%d tooSmall=%d tooBig=%d\n", count, tooSmall, tooBig );
  printf( ">>>                    starts=%d  stops=%d expTime=%g s\n", eventsA, eventsB,
          expTime * timeBase );
  printf( ">>>       Bin Time   Counter global      Counter 1-2\n" );
  for ( i = 0; i < HIST_BINCOUNT; ++i ) {
    /* "Bin Time" is the lower limit of the bin */
    printf( ">>> %12fns %16d %16d\n", i * bin2ns, hist1[i], hist2[i] );
  }

  /* Stop it and exit */
  TDC_deInit();
}


int main( int argc, char ** argv )
{
  int signal = 0, selftest = 0, flatgen = 0, normgen = 0;
  if ( argc > 1 ) {
    signal   = !strcmp( argv[1], "signal" );
    selftest = !strcmp( argv[1], "selftest" );
    flatgen  = !strcmp( argv[1], "flatgen" );
    normgen  = !strcmp( argv[1], "normgen" );
  }
  if ( !(signal || selftest || normgen || flatgen) ) {
    printf( "usage: %s [signal | selftest | flatgen | normgen]\n", argv[0] );
    return 1;
  }
  run( selftest, flatgen, normgen );
  return 0;
}
