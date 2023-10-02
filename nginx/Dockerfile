# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache nginx
COPY proxy_set_header.inc /etc/nginx/
COPY domain?.conf /etc/nginx/http.d/
RUN docker-config.sh /etc/nginx
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/nginx
VOLUME ["/etc/nginx", "/var/log/nginx"]
EXPOSE 80
ENTRYPOINT ["docker-entrypoint.sh"]
