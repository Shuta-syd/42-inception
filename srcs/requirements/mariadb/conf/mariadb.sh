#!/bin/sh

echo "Hello MariaDB containcer"

#to start mariadb on alpine linux
mkdir -p /run/openrc/
touch /run/openrc/softlevel
/etc/init.d/mariadb setup
rc default
/etc/init.d/mariadb start

tail -f /dev/null
