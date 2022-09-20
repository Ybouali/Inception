FROM debian:buster

RUN apt-get update && apt-get install php-fpm php-common php-mbstring php-xmlrpc php-gd php-xml php-mysql php-cli php-zip php-curl -y && apt-get install unzip && apt-get install curl

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar


WORKDIR /tmp

RUN curl -LO https://wordpress.org/latest.zip

RUN unzip latest.zip; rm -rf latest.zip;

RUN rm -rf /tmp/wordpress/wp-config-sample.php

COPY ./conf/wp-config.php /tmp/wordpress/

RUN rm -rf /etc/php/7.3/fpm/pool.d/www.conf

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/

COPY ./tools/script.sh /tmp/

WORKDIR /

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]