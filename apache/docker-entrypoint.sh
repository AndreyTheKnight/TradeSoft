#!/bin/sh

docker-defconf-init.sh

#exec apache2ctl -D FOREGROUND

apache2ctl start
trap "apache2ctl -k stop" TERM
read
