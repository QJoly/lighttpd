#!/bin/sh

LOGDIR="/var/log/lighttpd"
touch $LOGDIR/lighttpd.log
chmod a+rw $LOGDIR/lighttpd.log
exec lighttpd -D -f /etc/lighttpd/lighttpd.conf &
tail -f $LOGDIR/lighttpd.log
