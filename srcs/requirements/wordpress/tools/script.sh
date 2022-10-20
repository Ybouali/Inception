#!/bin/bash

cp /tmp/wp-config.php /wordpress/

rm /etc/php/7.3/fpm/pool.d/www.conf

cp ./tmp/www.conf /etc/php/7.3/fpm/pool.d/

if [ ! -d "/run/php" ]; then
    mkdir /run/php/;
fi

chown -R www-data:www-data /wordpress

php-fpm7.3 -F -R


