#!/bin/bash
CHAT_ID=""
BOT_TOKEN=
TELEGRAM_URL="https://api.telegram.org/bot$BOT_TOKEN/sendMessage"
MESSAGE="$1"
curl -s -X POST $TELEGRAM_URL -d chat_id=$CHAT_ID -d text="$MESSAGE" 