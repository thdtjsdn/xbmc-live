#!/bin/bash

#      Copyright (C) 2005-2010 Team XBMC
#      http://www.xbmc.org
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with XBMC; see the file COPYING.  If not, write to
#  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#  http://www.gnu.org/copyleft/gpl.html

echo "--------------------------"
echo "Copying installer files..."
echo "--------------------------"

mkdir -p $WORKPATH/buildLive/Files/packages.binary &> /dev/null

if ! ls $WORKPATH/buildDEBs/live-installer*.udeb > /dev/null 2>&1; then
	echo "Files missing (live-installer), exiting..."
	exit 1
fi
cp $WORKPATH/buildDEBs/live-installer*.udeb $WORKPATH/buildLive/Files/packages.binary

if ! ls $WORKPATH/buildDEBs/xbmclive-installhelpers*.udeb > /dev/null 2>&1; then
	echo "Files missing (xbmclive-installhelpers), exiting..."
	exit 1
fi
cp $WORKPATH/buildDEBs/xbmclive-installhelpers*.udeb $WORKPATH/buildLive/Files/packages.binary
