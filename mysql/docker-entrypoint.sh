#!/bin/sh

cp -r /etc/my.cnd.d.orig/* /etc/my.cnd.d/

exec "$@"
