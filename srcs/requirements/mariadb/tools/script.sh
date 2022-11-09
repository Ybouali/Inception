#!/bin/bash

service mysql start



if [ -z "$(mysql -u root -e "SHOW DATABASES LIKE '${DATABASE_NAME}'" | grep ${DATABASE_NAME})" ]; then

mysql -u root << stop
    
CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME};

CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';

stop

sleep 1

mysql ${DATABASE_NAME} < /tmp/wordpress.sql

sleep 1

mysql -u root << stop

GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'%';

FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;

exit

stop

fi