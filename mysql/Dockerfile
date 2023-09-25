# syntax=docker/dockerfile:1

FROM alpine
RUN apk add --no-cache mysql
RUN /etc/init.d/mariadb setup
VOLUME /var/lib/mysql
EXPOSE 3306
CMD ["mysqld"]
