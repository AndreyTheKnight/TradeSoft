# syntax=docker/dockerfile:1

FROM alpine
VOLUME ["/etc/nginx", "/var/log/nginx"]
RUN apk add --no-cache nginx
COPY domain1.conf domain2.conf proxy_set_header.inc /etc/nginx/conf.d/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
