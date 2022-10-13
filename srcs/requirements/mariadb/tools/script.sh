#!/bin/bash

service mysql start

if [ -z "$(mysql -u root -e "SHOW DATABASES LIKE '${DATABASE_NAME}'" | grep ${DATABASE_NAME})" ]; then

    
    echo "Creating ${DATABASE_NAME} database ..."
    # mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp_db; CREATE USER IF NOT EXISTS 'wp-user'@'%' IDENTIFIED BY 'wp-pass'; GRANT ALL PRIVILEGES ON *.* TO 'wp-user'@'%'; FLUSH PRIVILEGES;"
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS wp_db;"
    mysql -u root -e "CREATE USER IF NOT EXISTS 'wp-user'@'%' IDENTIFIED BY 'wp-pass';"
    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'wp-user'@'%';"
    mysql -u root -e "FLUSH PRIVILEGES;"

fi
    
sleep 1

service mysql stop

mysqld