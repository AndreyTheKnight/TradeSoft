# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache mysql
RUN apk add --no-cache su-exec
COPY --chmod=500 docker-entrypoint.sh /usr/local/bin
COPY --from=scripts --chmod=500 docker-* /usr/local/bin
RUN docker-defconf-backup.sh /etc/my.cnf.d /var/lib/mysql
VOLUME ["/etc/my.cnf.d", "/var/lib/mysql", "/var/log/mysql"]
EXPOSE 3306
ENTRYPOINT ["docker-entrypoint.sh"]
