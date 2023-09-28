# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache nginx tzdata
ENV TZ=Europe/Moscow
COPY proxy_set_header.inc /etc/nginx/
COPY domain?.conf /etc/nginx/http.d/
EXPOSE 80
VOLUME ["/etc/nginx", "/var/log/nginx"]
CMD ["nginx", "-g", "daemon off;"]
