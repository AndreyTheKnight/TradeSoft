#!/bin/sh

docker-config-init

trap "apache2ctl -k stop" TERM
exec "apache2ctl -D FOREGROUND"
