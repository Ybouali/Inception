#!/bin/bash

/etc/init.d/php7.3-fpm start

/etc/init.d/php7.3-fpm restart

mkdir -p /var/www/${DOMAIN_NAME}

cp -a /tmp/wordpress/. /var/www/${DOMAIN_NAME}

chown -R www-data:www-data /var/www/${DOMAIN_NAME}

tail -f
