#!/bin/bash

rm /tmp/wordpress/wp-config-sample.php

cp /tmp/wp-config.php /tmp/wordpress/

mv -f /tmp/wordpress/* /wordpress/

rm /etc/php/7.3/fpm/pool.d/www.conf

cp ./tmp/www.conf /etc/php/7.3/fpm/pool.d/

if [ ! -d "/run/php" ]; then
    mkdir /run/php/;
fi

chown -R www-data:www-data /wordpress

echo "Wordpress is here :)"

php-fpm7.3 -F -R


