# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache prometheus
RUN echo "      - targets: [\"host.docker.internal:9100\"]" >> /etc/prometheus/prometheus.yml
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/prometheus
VOLUME ["/etc/prometheus"]
EXPOSE 9090
ENTRYPOINT ["docker-entrypoint.sh"]
