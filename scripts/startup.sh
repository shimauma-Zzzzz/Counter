#!/bin/sh

LOGFILE=/logs/messages.log

export TZ=JST-9

/opt/ibm/wlp/bin/server start defaultServer

tail -f ${LOGFILE}
