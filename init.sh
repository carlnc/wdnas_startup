#!/bin/sh

#
# SPDX-FileCopyrightText: 2020 Western Digital Corporation or its affiliates.
#
# SPDX-License-Identifier: GPL-2.0-or-later
#

[ -f /tmp/debug_apkg ] && echo "APKG_DEBUG: $0 $@" >> /tmp/debug_apkg

path=$1

echo "Link file from : "$path

#create a folder for webpage
WEBPATH="/var/www/Startup/"
mkdir -p $WEBPATH

#webpage,function,css,js,cgi
ln -sf $path/web/* $WEBPATH

WEBPATH_CONFIG="/var/www/apps/Startup/"
mkdir -p $WEBPATH_CONFIG

#webpage,function,css,js,cgi for config
ln -sf $path/web_config/* $WEBPATH_CONFIG
