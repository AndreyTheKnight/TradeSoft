# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache prometheus
RUN mv /etc/prometheus/prometheus.yml /etc/prometheus/prometheus.yml.orig
COPY prometheus.yml /etc/prometheus
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/nginx
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 9090
CMD ["prometheus"]
