#!/bin/sh
cp -r /etc/apache2.orig/* /etc/apache2/
cp -r /var/www.orig/* /var/www/
exec "$@"
