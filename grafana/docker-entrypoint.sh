#!/bin/sh

docker-defconf-init.sh
chown -R grafana:grafana /usr/share/grafana

exec su-exec grafana grafana server --homepath /usr/share/grafana
