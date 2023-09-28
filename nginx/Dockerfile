# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache nginx
COPY proxy_set_header.inc /etc/nginx/
COPY domain?.conf /etc/nginx/http.d/
COPY --chmod=+x ../docker-*.sh /usr/local/bin
RUN docker-defconf.sh /etc/nginx
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
