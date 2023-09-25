# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache grafana
EXPOSE 3000
CMD ["grafana" "server"]
