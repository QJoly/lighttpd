#!/bin/sh

LOGDIR="/var/log/lighttpd"
touch $LOGDIR/lighttpd.log
chmod a+rw $LOGDIR/lighttpd.log
chmod a+r -R /var/www/localhost/htdocs
exec lighttpd -D -f /etc/lighttpd/lighttpd.conf &
tail -f $LOGDIR/lighttpd.log
