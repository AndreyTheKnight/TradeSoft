#!/bin/sh

docker-defconf-init.sh

exec prometheus --config.file=/etc/prometheus/prometheus.yml
