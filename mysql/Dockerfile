# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache mysql
RUN mv /etc/my.cnf.d /etc/my.cnf.d.orig \
  && mkdir /etc/my.cnf.d
COPY --chmod=+x docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306
CMD ["mysqld"]
