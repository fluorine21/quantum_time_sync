############################################################
#
#  Project:        TDC User Library
#
#  Filename:       makefile
#
#  Purpose:        MSVC makefile for tdcbase CLI
#
#  Author:         NHands GmbH & Co KG
#
############################################################
# $Id: makefile.win,v 1.2 2017/11/14 18:04:16 trurl Exp $

INCDIR=..\inc
LIBDIR=..\lib

all : tdccli.exe tdcbase.dll

tdccli.exe : tdccli.c getopt.c getoptwin.h makefile
	cl -nologo -W3 -Zi -MD -wd4996 -I$(INCDIR) $(LIBDIR)\tdcbase.lib tdccli.c getopt.c

tdcbase.dll : $(LIBDIR)\tdcbase.dll
	copy $(LIBDIR)\*.dll .

clean:
	del *.exe *.obj *.manifest *.pdb *.ilk *.dll
