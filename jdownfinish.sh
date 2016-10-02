#!/bin/sh

TOKEN="APP_TOKEN"
USER="USER_TOKEN"
PACKAGE=$1
EVENT=$2
MESSAGE="finished"

curl -s \
	-F "token=${TOKEN}" \
	-F "user=${USER}" \
	-F "title=${EVENT} ${MESSAGE}" \
	-F "message=${PACKAGE}: $(date)" \
	http://api.pushover.net/1/messages > /dev/null
