/*******************************************************************************
 *
 *  Project:        quTAG User Library
 *
 *  Filename:       example5.c
 *
 *  Purpose:        Simple example for use of tdcbase lib
 *                  Signal conditioning, Lifetime feature
 *
 *  Author:         NHands GmbH & Co KG
 *
 *******************************************************************************/
/* $Id: example5.c,v 1.1 2017/12/14 12:43:52 trurl Exp $ */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "tdcbase.h"
#include "tdclifetm.h"

#ifdef unix
#include <unistd.h>
#define SLEEP(x) usleep(x*1000)
#else
#include <windows.h>
#define SLEEP(x) Sleep(x)
#endif

#define BINWIDTH    2000
#define BINCOUNT   50000   /* suitable for 100 kHz Signal */
#define CH1            0
#define CH2            3

static void checkRc( const char * fctname, int rc )
{
  if ( rc ) {
    printf( ">>> %s: %s\n", fctname, TDC_perror( rc ) );
    TDC_deInit();
    exit( 1 );
  }
}


void collectEvents( int msecs, const char * header, TDC_LftFunction ** data )
{
  int   rc, tooBig, starts, stops;
  Int64 expTime;
  TDC_LftFunction * d;

  printf( "\nStatistics %s\n", header );
  SLEEP( 100 );
  rc = TDC_resetLftHistograms();
  checkRc( "TDC_resetLftHistogram", rc );
  SLEEP( msecs );

  d = TDC_createLftFunction();
  checkRc( "TDC_createLftFunction", d == 0 ? 99 : TDC_Ok );
  *data = d;
  
  rc = TDC_getLftHistogram( CH2, 1, d, &tooBig, &starts, &stops, &expTime );
  checkRc( "TDC_getLftHistogram", rc );
  printf( "Starts: %d, Stops: %d, tooBig: %d, expTime: %g s\n",
          starts, stops, tooBig, expTime / 1.e12 );
}
  


int run( double threshold )
{
  int i, rc, filledBins = 0;
  TDC_LftFunction * histo1, * histo2, * histo3, *histo4;
  double timeBase, bin2us;

  rc = TDC_init( -1 );
  checkRc( "TDC_init", rc );
  rc = TDC_getTimebase( &timeBase );
  checkRc( "TDC_getTimebase", rc );
  bin2us = BINWIDTH * timeBase * 1.e6;
  rc = TDC_enableChannels( 0xff );
  checkRc( "TDC_enableChannels", rc );
  rc = TDC_enableLft( 1 );
  checkRc( "TDC_enableLft", rc );
  rc = TDC_setLftParams( BINWIDTH, BINCOUNT );
  checkRc( "TDC_setLftParams", rc );
  rc = TDC_configureSignalConditioning( CH1, SCOND_MISC, 1, threshold );
  checkRc( "TDC_configureSignalConditioning(1,...)", rc );
  rc = TDC_configureSignalConditioning( CH2, SCOND_MISC, 1, threshold );
  checkRc( "TDC_configureSignalConditioning(2,...)", rc );
  rc = TDC_setLftStartInput( CH1 );
  checkRc( "TDC_setLftStartInput", rc );
  rc = TDC_addLftHistogram( CH2, 1 );
  checkRc( "TDC_addLftHistogram", rc );

  rc = TDC_configureSyncDivider( 1, 0 );
  checkRc( "TDC_configureSyncDivider(1)", rc );
  collectEvents( 1000, "without divider", &histo1 );

  rc = TDC_configureSyncDivider( 8, 0 );
  checkRc( "TDC_configureSyncDivider(8,0)", rc );
  collectEvents( 1000, "with divider 8", &histo2 );

  rc = TDC_configureSyncDivider( 8, 1 );
  checkRc( "TDC_configureSyncDivider(8,1)", rc );
  collectEvents( 1000, "with compensated divider", &histo3 );

  rc = TDC_configureSyncDivider( 8, 0 );
  checkRc( "TDC_configureSyncDivider(8,0)", rc );
  rc = TDC_preselectSingleStop( 1 );
  checkRc( "TDC_preselectSingleStop", rc );
  collectEvents( 1000, "with divider 8 and SingleStop", &histo4 );

  rc = TDC_configureSyncDivider( 1, 0 );
  checkRc( "TDC_configureSyncDivider(1)", rc );
  rc = TDC_preselectSingleStop( 0 );
  checkRc( "TDC_preselectSingleStop", rc );

  printf( "\nStart multistop histogram bins with nonvanishing contents:\n" );
  printf( " bin no   time diff [us]    divider=1    divider=8  div.compens div=8/Single\n" );
  for ( i = 0; i < BINCOUNT; i++ ) {
    if ( histo1 ->values[i] || histo2 ->values[i] || histo3 ->values[i] || histo4 ->values[i] ) {
      printf( "%7d %16f %12.1f %12.1f %12.1f %12.1f\n", i, i * bin2us,
              histo1 ->values[i], histo2 ->values[i], histo3 ->values[i], histo4 ->values[i] );
      filledBins++;
    }
  }
  printf( "\nFilled Bins: %d\n", filledBins );

  TDC_deInit();
  return 0;
}


/* #include <crtdbg.h>
 */

int main( int argc, char ** argv )
{
  double threshold = 1.0;

  /*  int tmpFlag = _CrtSetDbgFlag( _CRTDBG_REPORT_FLAG ) | _CRTDBG_CHECK_ALWAYS_DF;
      _CrtSetDbgFlag( tmpFlag );  
  */
  if ( argc <= 1 ) {
    printf( "\nTDC signal conditioning and lifetime feature example.\n\n"
            "Connect a generated signal to channels %d and %d\n"
            "and call the program with a threshold value\n"
            "below the signal level.\n"
            "Usage %s <threshold[V]>.\n\n", CH1, CH2, argv[0] );
    return 1;
  }

  sscanf( argv[1], "%lg", &threshold );
  return run( threshold );
}
