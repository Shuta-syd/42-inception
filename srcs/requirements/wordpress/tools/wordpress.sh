#!/bin/bash

#install wordpress
if [ -d /var/www/wordpress ]; then 
	echo "wordpress dir is already exist"
else
	wget https://wordpress.org/latest.tar.gz
	tar -xzvf latest.tar.gz
	rm -rf latest.tar.gz
	cp -r wordpress /var/www/
fi

#mv conf files
rm -rf /etc/php/7.3/fpm/pool.d/www.conf
mv www.conf /etc/php/7.3/fpm/pool.d/www.conf

#setting wp-config.php
rm -rf /var/www/wordpress/wp-config-sample.php
mv  ./wp-config.php /var/www/wordpress/wp-config.php

#install wp-cli
if [ -f /usr/local/bin/wp-cli.phar ]; then
	echo "wp-cli is already exist"
else
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 
	chmod 755 wp-cli.phar
	mkdir -p /usr/local/bin/wp
	chmod 777 /usr/local/bin/wp
	mv wp-cli.phar /usr/local/bin/wp/
fi


#start php8-fpm
mkdir -p /run/php
/usr/sbin/php-fpm7.3 -F
