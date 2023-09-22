# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache prometheus
EXPOSE 9090
CMD ["prometheus"]
