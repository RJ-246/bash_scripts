#!/bin/bash
POOL_CAP=$(/usr/bin/zpool list -Hp | awk '{print $8}')
if (( $POOL_CAP > 80 )); then
	/home/ryan/scripts/send-telegram-msg.sh "Pool capacity is over 80%"
fi