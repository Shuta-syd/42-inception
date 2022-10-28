#!/bin/bash

echo "Hello MariaDB containcer"

#to start mariadb on alpine linux
service mysql start
mysql --user=root


#set up database
mysql -e "CREATE DATABASE IF NOT EXISTS ${MYSQL_DATABASE};"
mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@"localhost" IDENTIFIED BY '${MYSQL_PASSWORD}';"
mysql -e "GRANT ALL PRIVILEGES ON * . * TO '${MYSQL_USER}'@'localhost';"
mysql -e "FLUSH PRIVILEGES;"

service mysql stop
exec mysqld_safe
