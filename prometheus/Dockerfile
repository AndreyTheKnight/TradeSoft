# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache prometheus
RUN echo "- targets: ['host.docker.internal:9100']" >> /etc/prometheus/prometheus.yml
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/prometheus
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 9090
CMD ["prometheus", "--config.file=/etc/prometheus/prometheus.yml"]
