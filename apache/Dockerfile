# syntax=docker/dockerfile:1

FROM php:7.2.34-alpine
RUN apk add --no-cache apache2
COPY docker-entrypoint.sh /usr/local/bin
COPY domain?.conf /etc/apache2/conf.d/
COPY index.php /var/www/html/
RUN mv /etc/apache2 /etc/apache2.orig \
  && mkdir /etc/apache2
VOLUME /etc/apache2 /var/log/apache2 /var/www
EXPOSE 81
EXPOSE 82
ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["httpd", "-DFOREGROUND"]
