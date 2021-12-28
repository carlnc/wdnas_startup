#!/bin/sh

#
# SPDX-FileCopyrightText: 2020 Western Digital Corporation or its affiliates.
#
# SPDX-License-Identifier: GPL-2.0-or-later
#

[ -f /tmp/debug_apkg ] && echo "APKG_DEBUG: $0 $@" >> /tmp/debug_apkg

# DO NOT REMOVE!!
# This is for APKG Startup backward compatibility(version 1.00).
# backup config files SHOULD BE wrote into preinst.sh, and this JUST for APKG Startup backward compatibility.
APKG_MODULE="Startup"

APKG_PATH=""

