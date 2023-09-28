# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN mv /etc/grafana /etc/grafana.orig \
  && mkdir /etc/grafana
COPY --chmod=755 docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["grafana", "server"]
