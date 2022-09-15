#!/bin/bash

if [ ! -d "/run/php" ]; then
    mkdir /run/php/;
fi

mkdir -p /var/www/wordpress

cp -a /tmp/wordpress/. /var/www/wordpress

chown -R www-data:www-data /var/www/wordpress

php-fpm7.3 -F -R

# tail -f

# if [ ! -f "/var/www/html/wp-config.php" ]; then
#     cd /tmp \
#     && curl -LO https://wordpress.org/latest.tar.gz && tar xzvf latest.tar.gz \
#     && cp -r /tmp/wordpress/* /var/www/html/ \
#     && cp /wp-config.php /var/www/html/ \
#     && chown -R www-data:www-data /var/www/html/; 
# fi 

# wp-cli core install --url=${DOMAIN_NAME} --title=ael-fadiInception --admin_user=${WP_ADMIN} --admin_password=${WP_ADMIN_PASSWORD} --admin_email=ybouali@gmail.com --allow-root  --path="/var/www/html/"
