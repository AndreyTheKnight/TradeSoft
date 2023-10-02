#!/bin/sh

echo "- targets: ['host.docker.internal:9100']" >> /defconf/etc/prometheus/prometheus.yml
docker-defconf-init.sh

exec prometheus --config.file=/etc/prometheus/prometheus.yml
