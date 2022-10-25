#! /bin/sh

#install wordpress
wget https://wordpress.org/latest.tar.gz
mv latest.tar.gz /var/www
tar -xzvf /var/www/latest.tar.gz
rm -rf /var/www/latest.tar.gz

#setting wp-config.php
rm -rf /var/www/wordpress/wp-config-sample.php
mv  /var/www/html/wp-config.php /var/www/wordpress/wp-config.php

#start php8-fpm
/usr/sbin/php-fpm8

tail -f /dev/null
