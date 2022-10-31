#! /bin/sh

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
rm -rf /etc/php8/php-fpm.d/www.conf
mv ./www.conf /etc/php8/php-fpm.d/

#setting wp-config.php
rm -rf /var/www/wordpress/wp-config-sample.php
mv  ./wp-config.php /var/www/wordpress/wp-config.php

#start php8-fpm
/usr/sbin/php-fpm8 -F
