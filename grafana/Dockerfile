# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN apk add --no-cache su-exec
RUN chown grafana:grafana /usr/share/grafana
RUN mv /etc/grafana.ini /usr/share/grafana/
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /usr/share/grafana
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000
CMD ["su-exec", "grafana", "grafana", "server", "--homepath", "/usr/share/grafana"]
