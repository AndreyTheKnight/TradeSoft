# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
VOLUME /etc/grafana
EXPOSE 3000
CMD ["grafana", "server"]
