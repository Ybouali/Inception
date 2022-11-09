FROM debian:buster

RUN apt-get update && apt-get -y install \
                        unzip \
                        curl \
                        php-fpm=2:7.3+69 \
                        php-mysql=2:7.3+69

RUN curl -LO https://wordpress.org/wordpress-6.0.2.zip

RUN unzip wordpress-6.0.2.zip

COPY ./conf/* /tmp/

COPY ./tools/script.sh /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]