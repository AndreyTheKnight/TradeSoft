#!/bin/sh

docker-defconf-init.sh
chown -R grafana:grafana /usr/share/grafana

exec su-exec grafana grafana server --config /etc/grafana/grafana.ini --homepath /usr/share/grafana
