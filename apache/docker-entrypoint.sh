#!/bin/sh

docker-defconf-init.sh

trap "apache2ctl -k stop" TERM
exec apache2ctl -D FOREGROUND
