# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN mv /etc/grafana.ini /usr/share/grafana/
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/apache2 /var/www/html
VOLUME ["/usr/share/grafana"]
EXPOSE 3000
ENTRYPOINT ["docker-entrypoint.sh"]
