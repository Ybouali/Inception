#!/bin/bash

service mysql start

# mysql -u root -e "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci,FLUSH PRIVILEGES,GRANT ALL ON wordpress.* TO '{$MYSQL_USER}'@'%' IDENTIFIED BY '{$MYSQL_ROOT_PASSWORD}'"

sleep 1

service mysql stop

mysqld