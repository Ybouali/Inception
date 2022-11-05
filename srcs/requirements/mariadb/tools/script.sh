#!/bin/bash

service mysql start

mysql -u root -e "CREATE DATABASE IF NOT EXISTS ${DATABASE_NAME};"

mysql -u root -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysql ${DATABASE_NAME} < /tmp/wordpress.sql

mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}'@'localhost'"

# mysql -u root -e "UPDATE USER set mysql.user.plugin='auth_socket' where User='${MYSQL_USER}'"

mysql -u root -e "FLUSH PRIVILEGES;"

sleep 5

mysql -u root -e "ALTER USER 'root'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}'; FLUSH PRIVILEGES;"

sleep 5

mysqld


# service mysql stop


# service mysql stop
