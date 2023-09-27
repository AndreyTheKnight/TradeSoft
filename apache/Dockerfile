# syntax=docker/dockerfile:1

FROM php:7.2.34-alpine
RUN apk add --no-cache apache2
EXPOSE 80
VOLUME ["/etc/apache2", "/var/log/apache2", "/var/www/html"]
CMD ["apachectl", "-DFOREGROUND"]
