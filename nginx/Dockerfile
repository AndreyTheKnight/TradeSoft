# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache nginx
EXPOSE 80
VOLUME ["/etc/nginx", "/var/log/nginx"]
CMD ["nginx", "-g", "daemon off;"]
