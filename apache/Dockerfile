# syntax=docker/dockerfile:1

FROM debian:10-slim
RUN apt-get update && apt-get install -y \
  apache2 \
  libapache2-mod-php7.3 \
  php7.3 \
  && a2enmod php7.3
COPY global.conf domain?.conf /etc/apache2/conf.d/
COPY index.php /var/www/html/
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/apache2 /var/www/html
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 81
EXPOSE 82
CMD ["httpd", "-DFOREGROUND"]
