#! /bin/sh

#install wordpress
wget https://wordpress.org/latest.tar.gz .
tar -xzvf ./latest.tar.gz
rm -rf ./latest.tar.gz

#setting wp-config.php
rm -rf /wordpress/wp-config-sample.php
mv  /var/www/html/wp-config.php /wordpress/

tail -f /dev/null
