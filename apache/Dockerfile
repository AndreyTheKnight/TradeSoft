# syntax=docker/dockerfile:1

FROM php:7.2.34-alpine
RUN apk add --no-cache apache2 \
  && a2enmod php
EXPOSE 80
CMD ["apachectl", "-DFOREGROUND"]
