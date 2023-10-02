# syntax=docker/dockerfile:1

FROM debian:10-slim
RUN apt-get update && apt-get install -y \
  apache2 \
  libapache2-mod-php7.3 \
  php7.3
COPY global.conf /etc/apache2/conf-available
COPY domain1.conf domain2.conf /etc/apache2/sites-available
COPY index.php /var/www/html/domain1/
COPY index.php /var/www/html/domain2/
RUN a2enmod php7.3 \
  && a2enconf global \
  && a2dissite 000-default \
  && a2ensite domain1 \
  && a2ensite domain2
COPY --from=scripts --chmod=750 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/apache2 /var/www/html
EXPOSE 80
ENTRYPOINT ["docker-entrypoint.sh"]
