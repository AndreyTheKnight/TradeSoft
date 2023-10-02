# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN mkdir /etc/grafana && mv /etc/grafana.ini /etc/grafana/
COPY ./provisioning/datasources/default.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY ./provisioning/dashboards/default.yaml /usr/share/grafana/conf/provisioning/dashboards/
COPY node-exporter-full.json /usr/share/grafana/public/dashboards/
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/grafana/
VOLUME ["/etc/grafana/"]
EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
