# FROM debian:buster

# RUN apt-get update && apt-get install php-curl php-gd php-fpm php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y && apt-get install unzip && apt-get install curl

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar


# WORKDIR /tmp

# RUN curl -LO https://wordpress.org/latest.zip

# RUN unzip latest.zip

# WORKDIR /

# RUN rm -rf /tmp/wordpress/wp-config-sample.php

# COPY conf/wp-config.php /tmp/wordpress/


# RUN rm -rf /etc/php/7.3/fpm/pool.d/www.conf

# COPY conf/www.conf /etc/php/7.3/fpm/pool.d/

# COPY ./tools/* /tmp/


# ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]



FROM debian:buster as wordpress-image

RUN apt-get update -y
RUN apt-get install wget -y
RUN wget https://wordpress.org/latest.tar.gz
RUN tar -xvzf latest.tar.gz
RUN rm latest.tar.gz
RUN mkdir -p  /var/www/html
RUN mv wordpress /var/www/html/wordpress
RUN chown -R www-data:www-data /var/www/html/wordpress
RUN chmod -R 755 /var/www/html/wordpress
RUN  rm -rf /var/www/html/wordpress/wp-config-sample.php
COPY ./conf/wp-config.php /var/www/html/wordpress/wp-config.php

FROM debian:buster 

RUN apt-get update -y
RUN apt-get install php-fpm php-common php-mbstring php-xmlrpc \
    php-gd php-xml php-mysql php-cli php-zip php-curl -y
RUN mkdir -p /var/www/html/wordpress
COPY  --from=wordpress-image /var/www/html/wordpress /var/www/html/wordpress
COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
RUN mkdir -p  /run/php

CMD ["php-fpm7.3", "-FR"]