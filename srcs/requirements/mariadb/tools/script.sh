#!/bin/bash

mysqld start

mysql -u root -e "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci"

mysql -u root -e "GRANT ALL ON wordpress.* TO '{$MYSQL_USER}'@'%' IDENTIFIED BY '{$MYSQL_ROOT_PASSWORD}'"

mysql -u root -e "FLUSH PRIVILEGES"

/etc/init.d/mysql stop

mysqld