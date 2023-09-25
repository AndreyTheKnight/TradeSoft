# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache prometheus
VOLUME /etc/prometheus
EXPOSE 9090
CMD ["prometheus"]
