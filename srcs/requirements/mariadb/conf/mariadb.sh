#!/bin/sh

echo "Hello MariaDB containcer"

#to start mariadb on alpine linux
mkdir -p /run/openrc/
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc default
/etc/init.d/mariadb start

#set up database
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@"localhost" IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '${MYSQL_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

tail -f /dev/null
