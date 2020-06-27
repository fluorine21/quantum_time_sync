############################################################
#
#  Project:        QUTAG User Library
#
#  Filename:       makefile
#
#  Purpose:        MSVC makefile for examples
#
#  Author:         NHands GmbH & Co KG
#
############################################################
# $Id: makefile.win,v 1.1 2017/12/14 12:43:52 trurl Exp $

INCDIR=..\inc
LIBDIR=..\lib
MAINDIR=..\..

.c.exe:
	cl -nologo -W3 -Zi -MD -wd4996 -I$(INCDIR) $(LIBDIR)\tdcbase.lib %s

all : example0.exe \
      example5.exe \
      tdcbase.dll FTD3XX.dll

clean:
	del *.exe *.obj *.manifest *.dll

tdcbase.dll : $(LIBDIR)\tdcbase.dll
	copy $(LIBDIR)\tdcbase.dll .

FTD3XX.dll : $(MAINDIR)\FTD3XX.dll
	copy $(MAINDIR)\FTD3XX.dll .