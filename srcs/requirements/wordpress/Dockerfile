FROM debian:buster

RUN apt-get update && apt-get install unzip && apt-get install curl -y && apt-get install php-fpm=2:7.3+69 php-mysql=2:7.3+69 -y

RUN curl -LO https://wordpress.org/latest.zip

RUN unzip latest.zip

COPY ./conf/* /tmp/

COPY ./tools/script.sh /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]