FROM debian:buster

RUN  apt-get update -y && apt-get -y install \
                            wget \
                            php \
                            php-mysql 
                            
RUN mkdir -p /var/www/html/adminer

RUN wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer/index.php

ENTRYPOINT  php -S '[::]: 8080' -t /var/www/html/adminer/

