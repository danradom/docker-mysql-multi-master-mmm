#!/bin/bash

datadir="/va/lib/mysql"

if [ ! -d "$datadir/mysql" ]; then
	mkdir -p "$datadir"
fi

chown -R mysql:mysql "$datadir"
mysqld --initialize-insecure
mysqld --skip-networking --socket=/var/lib/mysql/mysql.sock &
pid="$!"
sleep 10
mysql_tzinfo_to_sql /usr/share/zoneinfo | mysql --protocol=socket -uroot -hlocalhost --socket=/var/lib/mysql/mysql.sock mysql
/var/lib/mysql-init/mysql-users.sh
kill -s TERM "$pid"
chown -R mysql:mysql "$datadir"

mysqld --datadir=/var/lib/mysql --log-error=/var/log/mysqld.log --pid-file=/var/run/mysqld/mysql.pid --socket=/var/lib/mysql/mysql.sock
