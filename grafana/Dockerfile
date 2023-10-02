# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN mv /etc/grafana.ini /usr/share/grafana/
COPY node-exporter-full.json /usr/share/grafana/public/dashboards/
RUN mv /usr/share/grafana/public/dashboards/home.json /usr/share/grafana/public/dashboards/home.json.orig
RUN mv /usr/share/grafana/public/dashboards/node-exporter-full.json /usr/share/grafana/public/dashboards/home.json
COPY ./provisioning/datasources/default.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /usr/share/grafana/
VOLUME ["/usr/share/grafana"]
EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
