#!/bin/sh
cp -r /etc/grafana.orig/* /etc/grafana/
exec "$@"
