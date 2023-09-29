# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/grafana
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3000
CMD ["grafana", "server"]
