#!/bin/bash

# mkdir /var/run/mysqld

# touch /var/run/mysqld/mysqld.sock

# # chown -R mysql:mysql /var/run/mysqld

# /etc/init.d/mysql stop

# /etc/init.d/mysql start

service mysql start

if [ -z "$(mysql -u root -e "SHOW DATABASES LIKE '${DATABASE_NAME}'" | grep ${DATABASE_NAME})" ]; then

    mysql -u root -e "CREATE DATABASE ${DATABASE_NAME} CHARACTER SET utf8 COLLATE utf8_general_ci;"
    
    # mysql -u root ${DATABASE_NAME} < /tmp/wordpress.sql

    mysql -u root -e " GRANT ALL PRIVILEGES ON ${DATABASE_NAME}.* TO '${MYSQL_USER}'@'%' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"
fi

# mysqladmin -u root -p $MYSQL_ROOT_PASSWORD shutdown

sleep 1

service mysql stop
# /etc/init.d/mysql stop

mysqld