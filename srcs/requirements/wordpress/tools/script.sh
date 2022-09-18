#!/bin/bash

mkdir -p /var/www/html/wordpress

mv /tmp/wordpress/* /var/www/html/

if [ ! -d "/run/php" ]; then
    mkdir /run/php/;
fi

chmod -R 777 /var/www/html/wordpress

chown -R www-data:www-data /var/www/html/wordpress

chown -R www-data:www-data /var/www/html/wordpress

php-fpm7.3 -F -R


