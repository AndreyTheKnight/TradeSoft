# syntax=docker/dockerfile:1

FROM php:7.2.34-alpine
RUN apk add --no-cache apache2
COPY global.conf domain?.conf /etc/apache2/conf.d/
COPY index.php /var/www/html/
COPY --from=scripts --chmod=755 docker-* /usr/local/bin
RUN docker-defconf.sh /etc/apache2 /var/www/html
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 81
EXPOSE 82
CMD ["httpd", "-DFOREGROUND"]
