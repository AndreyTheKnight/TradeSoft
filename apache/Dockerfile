# syntax=docker/dockerfile:1

FROM php:7.2.34-alpine
RUN apk add --no-cache apache2
COPY domain?.conf /etc/apache2/conf.d/
COPY index.php /var/www/html/
VOLUME /etc/apache2 /var/log/apache2 /var/www
EXPOSE 81
EXPOSE 82
CMD ["httpd", "-DFOREGROUND"]
