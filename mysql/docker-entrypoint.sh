#!/bin/sh

docker-defconf-init.sh
if [ -z "$(ls -A "/var/lib/mysql")" ]
then
  mysql_install_db --datadir=/var/lib/mysql
fi
mkdir /run/mysqld

#exec mysqld --user=root --log-error=/var/log/mysql/error.log

chown -R mysql:mysql /run/mysqld
chown -R mysql:mysql /var/lib/mysql
chown -R mysql:mysql /var/log/mysql
exec su-exec mysql mysqld --log-error=/var/log/mysql/error.log
