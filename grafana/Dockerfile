# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
RUN mv /etc/grafana /etc/grafana.orig \
  && mkdir /etc/grafana
COPY --chmod=+x docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000
CMD ["grafana", "server"]
