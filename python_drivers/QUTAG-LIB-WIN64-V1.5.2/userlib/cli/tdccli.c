/******************************************************************************
 *
 *  Project:        TDC Control Library
 *
 *  Filename:       tdccli.c
 *
 *  Purpose:        Command line interface for tdcbase lib
 *
 *  Author:         NHands GmbH & Co KG
 */
/*******************************************************************************/
/* $Id: tdccli.c,v 1.2 2019/03/15 17:22:07 trurl Exp $ */

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <ctype.h>

#ifdef _MSC_VER
#include <windows.h>
#include "getoptwin.h"  // a local getopt port
#else
#include <sys/time.h>   // gettimeofday
#include <unistd.h>
#include <getopt.h>     // the POSIX getopt
#endif

#include "tdcbase.h"
#include "tdcmultidev.h"
#include "tdcstartstop.h"


#define ARRAYCOUNT( array ) ( sizeof( array ) / sizeof( array[0] ) )
#define OPTCOUNT           ARRAYCOUNT( tdOptions )

#define TIMESTAMP_COUNT   10000
#define SLEEPTIME_IN_MS     100


/* ========================================
 * Data and functions on top of getopt
 * ========================================
 */


/* Parameters from the command line */
struct CliParams {
  Bln32           help;
  Bln32           examples;
  Bln32           debug;
  Bln32           info;
  const char *    sourceName;
  Int32           source;
  double          smpTime;
  Int32           selftestMask;
  Int32           selftestRate;
  Int32           genCount;
  Int32           genAvg;
  Int32           genWidth;
  TDC_FileFormat  tagFormat;
  const char    * tagName;
  Int32           curChannel;
  Int32           sigCond[TDC_QUTAG_CHANNELS];
  Bln32           sigEdge[TDC_QUTAG_CHANNELS];
  double          sigThrsh[TDC_QUTAG_CHANNELS];
  Int32           sigDelay[TDC_QUTAG_CHANNELS];
  Int32           syncDivider;
  Bln32           syncRecover;
  const char    * histSel;
  const char    * histName;
  Int32           binWidth;
  Int32           binCount;
  Bln32           showRates;
  Int32           coincWin;
  Int32           exposure;
};


/* Command line enumerations */
static const char * const sources[] = { "signal", "selftest", "gen-flat",   "gen-norm", NULL };
static const char * const formats[] = { "ascii",  "binary",   "compressed", "raw",      NULL };
static const char * const sigcnds[] = { "ttl",    "lvttl",    "nim",        "misc",     NULL };
enum Sources { SrcSignal, SrcSelftest, SrcFlat,      SrcNorm,  SrcFile };
enum Formats { FmtAscii,  FmtBinary,   FmtCompessed, FmtRaw };
enum SigCnds { CndTtl,    CndLvTtl,    CndNim,       CndMisc };


/* Command line parser control struct */
static const struct TdOption {
  char         shortName;
  const char * longName;
  const char * argName;
  const char * defaultVal;
  const char * helpText1;
  const char * helpText2;
  const char * group;
} tdOptions[] = {
  /* General */
  { 'h', "help",         "",       "", "Print this help and exit", "", "General Options" },
  { 'a', "examples",     "",       "", "Print help and command line examples", "", "" },
  { 'p', "printpar",     "",       "", "Print parameter values used", "", "" },
  { 'i', "devinfo",      "",       "", "Print device info", "", "" },
  /* Signal input */
  { 's', "source",   "name", "signal", "Set data source to signal, selftest, gen-flat,",
                                       "gen-normal, or <fileName>", "Signal Input" },
  { 't', "time",      "val",    "1.0", "Set maximum sampling time [s] (for",
                                       "source=signal/selftest)", "" },
  { 'S', "selftest", "mask",   "0xff", "Selftest channels mask", "", "" },
  { 'R', "selfrate",  "val",    "100", "Selftest datarate per channel [kHz]", "", "" },
  { 'n', "gencount",  "val",  "10000", "Number of generated tags", "", "" },
  { 'm', "genavg",    "val",    "200", "Average diff of generated time tags", "", "" },
  { 'w', "genwidth",  "val",    "100", "Distribution width of gen. tags", "", "" },
  /* Signal conditioning */
  { 'c', "channel",   "val",      "0", "Set number of channel to configure next (0..7)",
                                       "with channel specific parameters",
                                       "Signal Conditioning - can be used several times" },
  { 'o', "sigcond",  "name",    "ttl", "Set signal type of channel to ttl,",
                                       "lvttl, nim, or misc", "" },
  { 'e', "sigedge",   "val",      "1", "Signal edge of ch. recognized as event is",
                                       "rising (1) or falling (0)", "" },
  { 'T', "sigthrsh",  "val",    "1.0", "Signal threshold of ch. [V]", "", "" },
  { 'D', "sigdelay",  "val",      "0", "Ch. signal delay to compensate [81ps]", "", "" },
  { 'd', "syncdiv",   "val",      "1", "Divider for sync input", "(1, 8, 16, 32, 64, 128)", "" },
  { 'r', "syncrecov", "val",      "0", "Reconstruct skipped evts in software", "", "" },
  /* Time tag output */
  { 'f', "tagfmt",   "name",  "ascii", "Set output format to ascii, binary,",
                                       "compressed, or raw", "Time Tag Output" },
  { 'F', "tagfile",  "name",       "", "Write time tags and channels to file <name>", "", "" },
  /* Start stop histograms */
  { 'H', "histogr",  "mask",       "", "Select histograms to calculate (output to file)",
                                       "Example: '0-0:1-2' - global histogram and ch. 1-2",
                                       "Start Stop Histograms" },
  { 'I', "histfile", "name","hist.txt","Histograms output file name",
                                       "Default='hist.txt'", "" },
  { 'b', "binwidth",  "val",     "10", "Histogram bin width [81ps]", "", "" },
  { 'B', "bincount",  "val",    "100", "Histogram bin count", "", "" },
  /* Coincidence counters */
  { 'C', "countrates",   "",       "", "Display coincidence count rates", "",
                                       "Coincidence Counters" },
  { 'W', "coincwin",  "val",    "100", "Coincidence time window [81ps]", "", "" },
  { 'x', "exposure",  "val",    "100", "Coincidence exposure time [ms]", "", "" },
  { 0, NULL, NULL, NULL, NULL }
};


/* Translate string enumeration to index */
static int transEnum( const char * const enumNames[], const char * value, char ** ep )
{
  int i;
  for ( i = 0; enumNames[i] && strcmp( value, enumNames[i] ); ++i ) ;
  if ( !enumNames[i] && ep ) {
    *ep = (char *) value;   /* Transmit error information like strtoul() does */
  }
  return i;
}


/* Set a single CLI parameter from the command line arg;
 * return code: 0=success, 1=success + 1B/C specific parameter, -1=error */
static int setCliParameter( struct CliParams * p, char id, int ch, const char * value )
{
  int rc = 0;
  char * ep = "x";
  switch ( id ) {
  case 'h': p ->help         = value == NULL;                            break;
  case 'a': p ->examples     = value == NULL;                            break;
  case 'p': p ->debug        = value == NULL;                            break;
  case 'i': p ->info         = value == NULL;                            break;
  case 's': p ->sourceName   = value;
            p ->source       = transEnum( sources, value, NULL );        break;
  case 't': p ->smpTime      = strtod(  value, &ep );                    break;
  case 'S': p ->selftestMask = strtoul( value, &ep, 0 );                 break;
  case 'R': p ->selftestRate = strtoul( value, &ep, 0 );                 break;
  case 'n': p ->genCount     = strtoul( value, &ep, 0 );                 break;
  case 'm': p ->genAvg       = strtoul( value, &ep, 0 );                 break;
  case 'w': p ->genWidth     = strtoul( value, &ep, 0 );                 break;
  case 'f': p ->tagFormat    = transEnum( formats, value, &ep );         break;
  case 'F': p ->tagName      = value;                                    break;
  case 'c': p ->curChannel   = strtoul( value, &ep, 0 );                 break;
  case 'o': p ->sigCond[ch]  = transEnum( sigcnds, value, &ep ); rc = 1; break;
  case 'e': p ->sigEdge[ch]  = strtoul( value, &ep, 0 );         rc = 1; break;
  case 'T': p ->sigThrsh[ch] = strtod( value, &ep );             rc = 1; break;
  case 'D': p ->sigDelay[ch] = strtoul( value, &ep, 0 );                 break;
  case 'd': p ->syncDivider  = strtoul( value, &ep, 0 );         rc = 1; break;
  case 'r': p ->syncRecover  = strtoul( value, &ep, 0 );         rc = 1; break;
  case 'H': p ->histSel      = value;                                    break;
  case 'I': p ->histName     = value;                                    break;
  case 'b': p ->binWidth     = strtoul( value, &ep, 0 );                 break;
  case 'B': p ->binCount     = strtoul( value, &ep, 0 );                 break;
  case 'C': p ->showRates    = value == NULL;                            break;
  case 'W': p ->coincWin     = strtoul( value, &ep, 0 );                 break;
  case 'x': p ->exposure     = strtoul( value, &ep, 0 );                 break;
  default : rc = -1;
  }
  if ( ep == value ) {
    fprintf( stderr, "Parse error in parameter value '%s'\n", value );
    rc = -1;
  }
  if ( p ->curChannel < 0 || p ->curChannel > 7 ) {
    fprintf( stderr, "Channel number ('-c') out of range: %d\n", p ->curChannel );
    rc = -1;
  }

  return rc;
}


static char * printCliParameter( const struct CliParams * p, char id, char * buffer )
{
  int ch;
  char * b = buffer;
  for ( ch = 0; ch < TDC_QUTAG_CHANNELS; ++ch ) {
    switch ( id ) {
    case 'h': sprintf( b, "%d",      p ->help );                     break;
    case 'a': sprintf( b, "%d",      p ->examples );                 break;
    case 'p': sprintf( b, "%d",      p ->debug );                    break;
    case 'i': sprintf( b, "%d",      p ->info );                     break;
    case 's': sprintf( b, "%s (%d)", p ->sourceName, p ->source );   break;
    case 't': sprintf( b, "%f",      p ->smpTime );                  break;
    case 'S': sprintf( b, "0x%x",    p ->selftestMask );             break;
    case 'R': sprintf( b, "%d",      p ->selftestRate );             break;
    case 'n': sprintf( b, "%d",      p ->genCount );                 break;
    case 'm': sprintf( b, "%d",      p ->genAvg );                   break;
    case 'w': sprintf( b, "%d",      p ->genWidth );                 break;
    case 'f': sprintf( b, "%s",      formats[p ->tagFormat] );       break;
    case 'F': sprintf( b, "%s",      p ->tagName );                  break;
    case 'c': sprintf( b, "%d",      p ->curChannel );               break;
    case 'o': b += sprintf( b, "%s  ",   sigcnds[p ->sigCond[ch]] ); break;
    case 'e': b += sprintf( b, "%d  ",   p ->sigEdge[ch] );          break;
    case 'T': b += sprintf( b, "%.2f  ", p ->sigThrsh[ch] );         break;
    case 'D': b += sprintf( b, "%d  ",   p ->sigDelay[ch] );         break;
    case 'd': sprintf( b, "%d",      p ->syncDivider );              break;
    case 'r': sprintf( b, "%d",      p ->syncRecover );              break;
    case 'H': sprintf( b, "%s",      p ->histSel );                  break;
    case 'I': sprintf( b, "%s",      p ->histName );                 break;
    case 'b': sprintf( b, "%d",      p ->binWidth );                 break;
    case 'B': sprintf( b, "%d",      p ->binCount );                 break;
    case 'C': sprintf( b, "%d",      p ->showRates );                break;
    case 'W': sprintf( b, "%d",      p ->coincWin );                 break;
    case 'x': sprintf( b, "%d",      p ->exposure );                 break;
    default:  sprintf( b, "??? %c ???", id );
    }
  }
  return buffer;
}


/* Set all parameters in param to their command line or default values,
 * return code: 0=success, 1=success + 1B/C specific parameter, -1=error */
static int readCliParameters( int argc, char * const argv[], struct CliParams * params )
{
  int  i, ch, rc = 0, specificParams = 0;
  char c, shortOpt[OPTCOUNT*2];
  struct option longOpt[OPTCOUNT];

  shortOpt[0] = 0;
  params ->curChannel = 0;  /* must be initialized prior to all others */
  for ( i = 0; i < OPTCOUNT; ++i ) {
    /* Fill structures required by getopt */
    char  oo[3]  = { 0, 0, 0 };
    Bln32 hasArg = tdOptions[i] .argName && tdOptions[i] .argName[0];
    oo[0]        = tdOptions[i] .shortName;
    oo[1]        = hasArg ? ':' : 0;
    strcat( shortOpt, oo );
    longOpt[i] .name    = tdOptions[i] .longName;
    longOpt[i] .has_arg = hasArg;
    longOpt[i] .flag    = NULL;
    longOpt[i] .val     = tdOptions[i] .shortName;
    /* Initialize parameters with default values -- for all channels */
    for ( ch = 0; ch < TDC_QUTAG_CHANNELS; ++ch ) {
      setCliParameter( params, tdOptions[i] .shortName, ch, tdOptions[i] .defaultVal );
    }
  }

  /* Parse Cmdline Args with getopt */
  i = 0;
  while ( rc >= 0 && ( c = getopt_long( argc, argv, shortOpt, longOpt, NULL ) ) != -1 ) {
    rc = setCliParameter( params, c, params ->curChannel, optarg );
    specificParams = specificParams || rc > 0;
    ++i;
  }
  if ( rc == 0 && i < 1 ) {
    /* No match at all: help! */
    params ->help = 1;
  }

  return rc < 0 ? rc : specificParams;
}


/* Dump parameter values */
static void dumpCliParameters( const struct CliParams * p )
{
  int i, pos = 0;
  char buffer[128];
  printf( "Parameter dump:\n" );
  for ( i = 0; tdOptions[i] .shortName; ++i ) {
    pos = printf( "  -%c --%s", tdOptions[i] .shortName, tdOptions[i] .longName );
    while ( pos < 20 ) pos += printf( " " );
    printf( "= %s\n", printCliParameter( p, tdOptions[i] .shortName, buffer ) );
  }
  printf( "\n" );
}


/* Print out help on options */
static void printHelp( const char * progname )
{
  const struct TdOption * opt = tdOptions;
  printf( "Usage: %s [Options]\n"
          "Command line interface to the tdcbase library.", progname );
  for ( ; opt ->shortName; ++opt ) {
    int txtPos = 0;
    if ( opt ->group && opt ->group[0] ) {
      printf( "\n%s:\n", opt ->group );
    }
    txtPos += printf( "  --%s %s", opt ->longName, opt ->argName );
    while ( txtPos < 20 ) txtPos += printf( " " );
    txtPos += printf( "-%c %s", opt ->shortName, opt ->argName );
    while ( txtPos < 30 ) txtPos += printf( " " );
    txtPos += printf( "%s", opt ->helpText1 );
    if ( opt ->helpText2[0] ) {
      printf( "\n" );
      txtPos = 0;
      while ( txtPos < 30 ) txtPos += printf( " " );
      txtPos += printf( "%s", opt ->helpText2 );
    }
    if ( opt ->defaultVal && *opt ->defaultVal ) {
      printf( ", default: %s", opt ->defaultVal );
    }
    printf( "\n" );
  }
}


static void printExamples()
{
  printf( "\nSample command lines:\n\n" );
  printf( "tdccli -F txtfile.txt\n"
          "    Write all detected events for 1s to txtfile.txt.\n"
          "    (Device and signal input required.)\n\n" );
  printf( "tdccli -s selftest -R 10 -f binary -F binfile.bin\n"
          "    Write 8x10kEvents/s for 1s from the selftest engine to binfile.bin\n"
          "    with 10 bytes/event. (Device required.)\n\n" );
  printf( "tdccli -s signal -t 10 -c 2 -o nim -c 4 -o misc -T 2.5 -D 7\n"
          "       -f compressed -F binfile.bin\n"
          "    Configure signal conditioning for channels 2 and 4, and write timestamps\n"
          "    from the signal input to file with 5 bytes/sample for 10 s.\n\n" );
  printf( "tdccli -s gen-norm -n 1000 -m 5000 -I 2 -H histograms.txt\n"
          "    Generate 1000 timestamps by software, with diffs normally distributed\n"
          "    around 5000 TDC units, create start stop histograms for 2 channels\n"
          "    and write them to file. (Works without a device.)\n\n" );
  printf( "tdccli -s infile.bin -F outfile.txt\n"
          "    Translate binary file infile.bin to textfile outfile.txt.\n\n" );

}


/* ========================================
 * Little Helpers
 * ========================================
 */


/* Return a PC clock timestamp in ms */
static double pcTimestamp()
{
#ifdef unix
  struct timeval tv;
  gettimeofday( &tv, 0 );
  return tv .tv_sec + tv .tv_usec / 1.e6;
#else
  return GetTickCount() / 1000.;
#endif
}


/* Sleep for some msecs */
void sleepMs( int msecs )
{
#ifdef unix
  usleep( msecs * 1000 );
#else
  Sleep( msecs );
#endif
}


/* Check the return code of a TDC function */
static void checkRc( const char * fctname, int rc )
{
  if ( rc ) {
    printf( ">>> %s: %s\n", fctname, TDC_perror( rc ) );
    TDC_deInit();
    exit( 1 );
  }
}


/* Translate boolean to string */
static const char * yesNo( Bln32 val )
{
  return val ? "yes" : "no";
}


/* Decode histogram selection string; Format is "1-2,18-10" */
static int decodeSelStr( const char * string, int * pos, int * twoNumbers )
{
  int found = 0, accu = 0, accuValid = 0;
  while ( string[*pos] && found < 2 ) {
    int digit = isdigit( string[*pos] );
    if ( digit ) {
      accu = accu * 10 + string[*pos] - '0';
      accuValid = 1;
    }
    if ( accuValid && (!digit || !string[(*pos)+1]) ) {
      twoNumbers[found] = accu;
      found++;
      accu = 0;
      accuValid = 0;
    }
    (*pos)++;
  }
  return found;
}


/* ========================================
 * Functions accessing the device
 * ========================================
 */


/* All output of TDC_getHistogram */
struct HistogramInfo {
  Int32 * hist;
  Int32   startCh;
  Int32   stopCh;
  Int32   count;
  Int32   tooSmall;
  Int32   tooBig;
  Int32   starts;
  Int32   stops;
  Int64   expTime;
};


/* Retrieve histogram data and save them to file */
static int retrieveHistograms( const char * selector, const char * fileName, 
                               Int32 width, Int32 count )
{
  int    binNo = 0, i, rc;
  int    histCount = 0, parsePos = 0, channels[2];
  double timebase, bin2ns;
  struct HistogramInfo histograms[64]; /* 64 = arbitrary limit */
  FILE * file = fopen( fileName, "w" );

  while ( 2 == decodeSelStr( selector, &parsePos, channels ) && histCount < 64 ) {
    histograms[histCount] .startCh = channels[0];
    histograms[histCount] .stopCh  = channels[1];
    histCount++;
  }

  if ( !file ) {
    fprintf( stderr, "Can't open file %s for writing\n", fileName );
    return 1;
  }
  printf( "Writing histogram to file %s\n", fileName );

  rc = TDC_getTimebase( &timebase );
  checkRc( "TDC_getTimebase", rc );
  bin2ns = width * timebase * 1.e9;

  for ( i = 0; i < histCount; ++i ) {
    struct HistogramInfo * hi = &histograms[i];
    /* Allocate space for histograms */
    hi ->hist = malloc( count * sizeof( Int32 ) );
    rc = TDC_getHistogram( hi ->startCh, hi ->stopCh, 1, hi ->hist, &hi ->count, &hi ->tooSmall,
                           &hi ->tooBig, &hi ->starts, &hi ->stops, &hi ->expTime );
    checkRc( "TDC_getHistogram", rc );
  }

  /* Write histograms to text file, first print header */
  fprintf( file, "# BinNo   Tdiff[ns]" );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file,"   %02d-%02d", histograms[i] .startCh, histograms[i] .stopCh );
  }
  fprintf( file, "\n" );
  for ( binNo = 0; binNo < count; ++binNo ) {
    fprintf( file, "%7d  %10.3f ", binNo, binNo * bin2ns ); //first two columns of data
    for ( i = 0; i < histCount; ++i ) {
      fprintf( file, "%7d ", histograms[i] .hist[binNo] );
    }
    fprintf( file,"\n" );
  }
  fprintf( file, "# Total:            " );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file, "%7d ", histograms[i] .count );
  }
  fprintf( file, "\n# Too small:        " );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file, "%7d ", histograms[i] .tooSmall );
  }
  fprintf( file, "\n# Too big:          " );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file, "%7d ", histograms[i] .tooBig );
  }
  fprintf( file, "\n# Starts:           " );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file, "%7d ", histograms[i] .starts );
  }
  fprintf( file, "\n# Stops:            " );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file, "%7d ", histograms[i] .stops );
  }
  fprintf( file, "\n# Exposure[ms]:     " );
  for ( i = 0; i < histCount; ++i ) {
    fprintf( file, "%7d ", (int) (histograms[i] .expTime / 1.e9) );
  }
  fprintf( file, "\n" );

  fclose( file );
  return 0;
}


/* Collect data for a given time */
static void recordSignalsForTime( double seconds, int * evtCounter, int * overruns )
{
  Int32  tsValid = 0;
  double tStart  = pcTimestamp();

  while( ( pcTimestamp() - tStart < seconds ) ) {
    /* sleep some time while data are collected in the background */
    sleepMs( SLEEPTIME_IN_MS );
    /* Only count timestamps, ignore contents */
    TDC_getLastTimestamps( 1, NULL, NULL, &tsValid );
    evtCounter += tsValid;
    overruns   += tsValid >= TIMESTAMP_COUNT ? 1 : 0;
  }
}


/* Retrieve coincidence count rates and print to screen */
static void retrieveCountRates( void )
{
  static const char * captions[] = { "Start",       "1",       "2",       "3",       "4",
                                       "1/2",     "1/3",     "2/3",     "1/4",     "2/4",
                                       "3/4",     "1/5",     "2/5",     "3/5",     "4/5",
                                     "1/2/3",   "1/2/4",   "1/3/4",   "2/3/4",   "1/2/5",
                                     "1/3/5",   "2/3/5",   "1/4/5",   "2/4/5",   "3/4/5",
                                   "1/2/3/4", "1/2/3/5", "1/2/4/5", "1/3/4/5", "2/3/4/5",
                                   "1/.../5",     NULL };
  int   rc, i;
  Int32 coincCnt[TDC_COINC_CHANNELS];

  rc = TDC_getCoincCounters( coincCnt, NULL );
  checkRc( "TDC_getCoincCounters", rc );
  printf( "Coincidence counters:" );
  for ( i = 0; i < TDC_COINC_CHANNELS && captions[i]; ++i ) {
    if ( i % 5 == 0 ) {
      printf( "\n" );
    }
    printf( "%7s:%6d ", captions[i], coincCnt[i] );
  }
  printf( "\n" );
}

static void printDevInfo( void )
{
  static const char * dTypes[] = { "quTAG", "None" };
  static const struct {
    TDC_FeatureFlags   flag;
    const char       * descr;
  } features[] = {
    { FEATURE_HBT,      "HBT" },
    { FEATURE_LIFETIME, "Lifetime" },
    { FEATURE_3_CHAN,   "3 Channels" },
    { FEATURE_4_CHAN,   "4 Channels" },
    { FEATURE_5_CHAN,   "Start as Ch 5" },
    { FEATURE_MARKERS,  "Markers" },
    { FEATURE_FILTERS,  "Filters" },
    { FEATURE_EXTCLK,   "Ext. Clock" },
    { FEATURE_DEVSYNC,  "Sync" },
    { 0,                NULL }
  };
  unsigned int     addr = 0, i;
  Int32            id   = 0;
  char             serNo[16];
  TDC_DevType      type = TDC_getDevType();
  TDC_FeatureFlags feat = TDC_checkFeatures();
  int              rc   = TDC_getCurrentAddress( &addr );
  rc                    = TDC_getDeviceInfo( addr, NULL, &id, serNo, NULL );
  type                  = type > DEVTYPE_NONE ? DEVTYPE_NONE : type;
  printf( "Library version: %.1f\n", TDC_getVersion() );
  printf( "Device found: Type=%s ID=%d SerialNo=%s\n",
          dTypes[type], id, serNo );
  for ( i = 0; features[i] .flag; ++i ) {
    printf( "              %s: %s\n", features[i] .descr, yesNo( feat & features[i] .flag ) );
  }
}


/* ========================================
 * Main: Initialize and start tdceval,
 *       wait and get some data
 * ========================================
 */

int main( int argc, char ** argv )
{
  struct CliParams cliParams;
  int    rc = 0, i = 0, evtCount = 0, overrunCount = 0;
  Bln32  dataLost = 0, specificParams = 0;
  TDC_DevType devType = DEVTYPE_NONE;

  rc = readCliParameters( argc, argv, &cliParams );
  specificParams = rc > 0;
  if ( rc < 0 ) {
    fprintf( stderr, "Try --help for more information.\n" );
    return 1;
  }

  if ( cliParams .help || cliParams .examples ) {
    printHelp( argv[0] );
    if ( cliParams .examples ) {
      printExamples();
    }
    return 0;
  }

  if ( cliParams .debug ) {
    dumpCliParameters( &cliParams );
  }

  /* Initialize & set parameters */
  rc = TDC_init( -1 );                                 /* Find every device */
  /* checkRc( "TDC_init", rc ); */                     /* don't check - for demo mode! */
  devType = TDC_getDevType();                          /* Store device type */
  if ( cliParams .info ) {
    printDevInfo();
  }
  rc = TDC_enableChannels( 0xff );                     /* Use all real TDC channels */
  checkRc( "TDC_enableChannels", rc );
  rc = TDC_enableTdcInput( 0 );                        /* Don't mix real and simulated data */
  checkRc( "TDC_enableTdcInput", rc );
  rc = TDC_setTimestampBufferSize( TIMESTAMP_COUNT );  /* Fixed Buffer size */
  checkRc( "TDC_setTimestampBufferSize", rc );
  rc = TDC_freezeBuffers( 1 );                         /* Stop recording */
  checkRc( "TDC_freezeBuffers", rc );
  rc = TDC_getDataLost( &dataLost );                   /* Clear datalost state */
  checkRc( "TDC_getDataLost", rc );
  rc = TDC_setExposureTime( cliParams .exposure );     /* Transfer some CLI parameters */
  checkRc( "TDC_setExposureTime", rc );
  rc = TDC_setCoincidenceWindow( cliParams .coincWin );
  checkRc( "TDC_setCoincidenceWindow", rc );
  if ( specificParams ) {
    /* Call signal conditioning (for individual channels) only if explicitly requested. */
    rc = TDC_configureSyncDivider( cliParams .syncDivider, cliParams .syncRecover );
    checkRc( "TDC_configureSyncDivider", rc );
    for ( i = 0; i < TDC_QUTAG_CHANNELS; ++i ) {
      Int32 sigCond = cliParams .sigCond[i] == CndTtl ? CndLvTtl : cliParams .sigCond[i];
      rc = TDC_configureSignalConditioning( i, sigCond, cliParams .sigEdge[i],
                                            cliParams .sigThrsh[i] );
      checkRc( "TDC_configureSignalConditioning", rc );
    }
  }
  rc = TDC_setChannelDelays( cliParams .sigDelay );
  checkRc( "TDC_setChannelDelays", rc );

  /* Configure start stop histogram only if requested */
  if ( cliParams .histSel && cliParams .histSel[0] ) {
    int parsePos = 0, channels[2];
    rc = TDC_enableStartStop( 1 );
    checkRc( "TDC_enableStartStop", rc );
    while ( 2 == decodeSelStr( cliParams .histSel, &parsePos, channels ) ) {
      if ( channels[1] != 0 ) {   /* channel independent histogram must not be added */
        rc = TDC_addHistogram( channels[0], channels[1], 1 );
        checkRc( "TDC_addHistogram", rc );
      }
    }
    rc = TDC_setHistogramParams( cliParams .binWidth, cliParams .binCount );
    checkRc( "TDC_setHistogramParams", rc );
    rc = TDC_clearAllHistograms();                     /* Clear buffers */
    checkRc( "TDC_clearAllHistograms", rc );
  }

  if ( cliParams .source == SrcSelftest ) {
    /* Configure internal signal generator:
     * signal period 4x20=80ns, bursts of n Periods, distance betw. bursts 2500x80ns=200us
     * dataRate = n/200us = n*5kHz  =>  n = dataRate[kHz] / 5 */
    Int32 n  = (cliParams .selftestRate + 4) / 5;
    Int32 cc = 0;
    for ( i = 0; i < 8; ++i ) {
      cc += (cliParams .selftestMask & (1<<i)) ? 1 : 0;
    }
    rc = TDC_configureSelftest( cliParams .selftestMask, 4, n, 2500 );
    checkRc( "TDC_configureSelftest", rc );
    printf( "Selftest signals: Expecting %.3f MS/s, histogram peaks at 80ns and %.2fus.\n",
            cc * cliParams .selftestRate / 1000., 200. - n*.08 );
  }

  /* Enable time tag writing if required */
  if ( cliParams .tagName && cliParams .tagName[0] ) {
    printf( "Writing %s time tags to %s\n", formats[cliParams .tagFormat], cliParams .tagName );
    TDC_writeTimestamps( cliParams .tagName, cliParams .tagFormat );
    checkRc( "TDC_writeTimestamps", rc );
  }

  /* Collect data */
  TDC_freezeBuffers( 0 );
  checkRc( "TDC_freezeBuffers", rc );
  switch ( cliParams .source ) {
  case SrcSignal:
  case SrcSelftest:
    rc = TDC_enableTdcInput( 1 );
    checkRc( "TDC_enableTdcInput", rc );
    recordSignalsForTime( cliParams .smpTime, &evtCount, &overrunCount );
    break;
  case SrcFlat:
  case SrcNorm: {
    TDC_SimType type = cliParams .source == SrcFlat ? SIM_FLAT : SIM_NORMAL;
    double par[2] = { cliParams .genAvg, cliParams .genWidth };
    rc = TDC_generateTimestamps( type, par, cliParams .genCount );
    checkRc( "TDC_generateTimestamps", rc );
  }
    break;
  case SrcFile:
  default:
    rc = TDC_readTimestamps( cliParams .sourceName, FORMAT_BINARY );
    checkRc( "TDC_readTimestamps", rc );
  }

  TDC_freezeBuffers( 1 );                            /* Freeze results */
  checkRc( "TDC_freezeBuffers", rc );
  TDC_writeTimestamps( NULL, cliParams .tagFormat ); /* Stop Writing - started or not */
  checkRc( "TDC_writeTimestamps", rc );
  rc = TDC_configureSelftest( 0, 2, 1, 2500 );       /* Switch off selftest engine */
  checkRc( "TDC_configureSelftest", rc );

  /* Retrieve start stop histograms and write to text file */
  if ( cliParams .histSel && cliParams .histSel[0] ) {
    retrieveHistograms( cliParams .histSel,  cliParams .histName,
                        cliParams .binWidth, cliParams .binCount );
  }

  /* Retrieve count rates */
  if ( cliParams .showRates ) {
    retrieveCountRates();
  }
   
  if ( evtCount ) {
    printf( "Processed %d events, %d buffer overruns.\n", evtCount, overrunCount );
  }

  rc = TDC_getDataLost( &dataLost );
  checkRc( "TDC_getDataLost", rc );
  if ( dataLost ) {
    fprintf( stderr, "Data was lost during USB transfer. Possibly too high data rate.\n" );
  }
  
  /* Stop it and exit */
  TDC_deInit();

  return 0;
}
