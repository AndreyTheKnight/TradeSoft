# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache mysql
COPY --from=scripts --chmod=555 docker-* /usr/local/bin
RUN docker-config.sh /etc/my.cnf.d
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306
CMD ["mysqld", "user=root"]
