#!/bin/bash

service mysql start

if [ -z "$(mysql -u root -e "SHOW DATABASES LIKE '${DATABASE_NAME}'" | grep ${DATABASE_NAME})" ]; then

    echo "Creating ${DATABASE_NAME} database ..."

    mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME};"

    mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

    mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER_TEST}'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD_TEST}';"

    mysql -u root ${DATABASE_NAME} < /tmp/wordpress.sql

    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%';"

    mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER_TEST}'@'%';"

    mysql -u root -e "FLUSH PRIVILEGES;"

fi

service mysql stop

mysqld