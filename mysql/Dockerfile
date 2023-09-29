# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache mysql
RUN apk add --no-cache su-exec
RUN mkdir /config/ \
  && mv /etc/my.cnf.d /config/
COPY --chmod=555 docker-entrypoint.sh /usr/local/bin
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306
CMD ["mysqld"]
