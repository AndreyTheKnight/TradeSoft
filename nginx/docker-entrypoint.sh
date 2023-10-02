#!/bin/sh

docker-defconf-init.sh

exec nginx -g daemon off;
