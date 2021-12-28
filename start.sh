#!/bin/sh

#
# SPDX-FileCopyrightText: 2020 Western Digital Corporation or its affiliates.
#
# SPDX-License-Identifier: GPL-2.0-or-later
#

# first argument is meant to be this app folder
APP_DIR=$1
# ... if it's not provided, fallback to "where this script lives"
if [ ! "$APP_DIR" ]; then
    APP_DIR=`dirname $0`
fi

SETTINGS_FILE="$APP_DIR/config/settings.sh"

if [ ! -f "$SETTINGS_FILE" ] ; then
    echo "Error: Settings file missing: $SETTINGS_FILE" >&2
    return 1;
fi

source $SETTINGS_FILE

if [ ! "$STARTUP_ENTRY_SCRIPT" ]; then
    echo "Error: You need to set STARTUP_ENTRY_SCRIPT=/path/to/your/starup_script.sh in $STARTUP_ENTRY_SCRIPT"
    return 1;
elif [ ! -f "$STARTUP_ENTRY_SCRIPT" ] ; then
    echo "Error: $STARTUP_ENTRY_SCRIPT is missing" >&2
    return 1;
elif [ ! -x "$STARTUP_ENTRY_SCRIPT" ] ; then
    echo "Error: $STARTUP_ENTRY_SCRIPT needs to be executable" >&2
    return 1;
fi

echo "Executing: $STARTUP_ENTRY_SCRIPT"

$STARTUP_ENTRY_SCRIPT 2>&1 > /tmp/StartupScript.log

return;
