# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN chown grafana:grafana /usr/share/grafana
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/grafana
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000
CMD ["su-exec", "grafana", "grafana", "server", "--config", "/etc/grafana/grafana.ini", "--homepath", "/usr/share/grafana"]
