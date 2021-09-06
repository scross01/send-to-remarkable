#!/bin/bash
# Send files to reMarkable

LOG="/usr/local/var/log/send2remarkable.log"
RMAPI="${HOME}/go/bin/rmapi"
SAFERM="/usr/local/bin/safe-rm"

for file in "$@"; do
	echo "${file}" >> $LOG 2>&1
	if [ ${file: -4} == ".pdf" ]; then
	  $RMAPI put "${file}" >> $LOG 2>&1
	  $SAFERM "${file}" >> $LOG 2>&1
	fi
done
