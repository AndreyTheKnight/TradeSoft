#!/bin/sh

docker-defconf-init.sh

exec apache2ctl -D FOREGROUND
