# syntax=docker/dockerfile:1

FROM debian:10-slim
RUN apt-get update && apt-get install -y \
  apache2 \
  libapache2-mod-php7.3 \
  php7.3
COPY domain1.conf domain2.conf /etc/apache2/sites-available
COPY index.php /var/www/html/domain1
COPY index.php /var/www/html/domain2
RUN a2enmod php7.3 \
  && a2dissite 000-default \
  && a2ensite domain1 \
  && a2ensite domain2
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/apache2 /var/www/html
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]
