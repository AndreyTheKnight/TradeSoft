# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache prometheus
RUN mv /etc/prometheus/prometheus.yml /etc/prometheus/prometheus.yml.orig
COPY prometheus.yml /etc/prometheus
VOLUME /etc/prometheus
EXPOSE 9090
CMD ["prometheus"]
