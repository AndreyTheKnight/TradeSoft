# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN mv /etc/grafana.ini /usr/share/grafana/
COPY ./provisioning/datasources/default.yaml /usr/share/grafana/conf/provisioning/datasources/
COPY ./provisioning/dashboards/default.yaml /usr/share/grafana/conf/provisioning/dashboards/
COPY node-exporter-full.json /usr/share/grafana/public/dashboards/
RUN printf "\n[dashboards]\ndefault_home_dashboard_path = /usr/share/grafana/public/dashboards/node-exporter-full.json\n" >> /usr/share/grafana/grafana.ini
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /usr/share/grafana/
VOLUME ["/usr/share/grafana"]
EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
