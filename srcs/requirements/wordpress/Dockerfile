FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install php-curl php-gd php7.3-fpm php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y && apt-get install unzip && apt-get install curl 

WORKDIR /tmp

RUN curl -LO https://wordpress.org/latest.zip

RUN unzip latest.zip

WORKDIR /

RUN rm -rf /tmp/wordpress/wp-config-sample.php

COPY conf/wp-config.php /tmp/wordpress/


RUN rm -rf /etc/php/7.3/fpm/pool.d/www.conf

COPY conf/www.conf /etc/php/7.3/fpm/pool.d/



# RUN mkdir -p /var/www/html

# RUN cp -r wordpress /var/www/html/

COPY ./tools/* /tmp/


ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]