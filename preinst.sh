#!/bin/sh

#
# SPDX-FileCopyrightText: 2020 Western Digital Corporation or its affiliates.
#
# SPDX-License-Identifier: GPL-2.0-or-later
#

[ -f /tmp/debug_apkg ] && echo "APKG_DEBUG: $0 $@" >> /tmp/debug_apkg

APKG_PATH=$1

APKG_MODULE="Startup"
APKG_BACKUP_PATH=${APKG_PATH}/../${APKG_MODULE}_backup

# backup config files and users settings
if [ ! -d ${APKG_BACKUP_PATH} ] ; then
	# copy config to /tmp
	mkdir -p ${APKG_BACKUP_PATH}
fi

mv -f $APKG_PATH/config ${APKG_BACKUP_PATH}

#do nothing
