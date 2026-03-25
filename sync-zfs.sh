#!/bin/sh

# $1 should be the src and $2 should be the dest
/usr/sbin/syncoid --exclude='.system' $1 $2 -r --delete-target-snapshots
ERRORCODE=$?
if [ $ERRORCODE -ne 0 ]; then
	/home/ryan/scripts/send-telegram-msg.sh "Syncoid failed with code $ERRORCODE"
else
	NOW=$(date +"%T")
	/home/ryan/scripts/send-telegram-msg.sh "Syncoid succeeded with code $ERRORCODE at $NOW"
fi