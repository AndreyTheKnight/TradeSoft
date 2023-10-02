# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN mkdir -p /etc/grafana/provisioned-dashboards/ && mv /etc/grafana.ini /etc/grafana/
COPY node-exporter-full.json /etc/grafana/provisioned-dashboards/
COPY ./provisioning/datasources/default.yaml /usr/share/grafana/conf/provisioning/datasources/
#COPY ./provisioning/dashboards/default.yaml /usr/share/grafana/conf/provisioning/dashboards/
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/grafana
ENV GF_DEFAULT_HOME_DASHBOARD_PATH=/etc/grafana/provisioned-dashboards/node-exporter-full.json
VOLUME ["/etc/grafana/"]
EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
