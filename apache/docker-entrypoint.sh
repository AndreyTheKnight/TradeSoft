#!/bin/sh
cp -r /etc/apache2.orig/* /etc/apache2/
exec "$@"
