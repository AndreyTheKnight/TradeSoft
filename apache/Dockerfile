# syntax=docker/dockerfile:1

FROM php:7.2.34-alpine
RUN apk add --no-cache apache2
COPY global.conf domain?.conf /etc/apache2/conf.d/
COPY index.php /var/www/html/
RUN mv /etc/apache2 /etc/apache2.orig \
  && mkdir /etc/apache2 \
  && mv /var/www /var/www.orig \
  && mkdir /var/www
COPY --chmod=+x docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 81
EXPOSE 82
CMD ["httpd", "-DFOREGROUND"]
