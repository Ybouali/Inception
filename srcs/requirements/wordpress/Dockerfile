FROM debian:buster

RUN apt-get update && apt-get install unzip && apt-get install curl -y && apt-get install php-fpm php-mysql -y

WORKDIR /tmp/

RUN curl -LO https://wordpress.org/latest.zip

RUN unzip latest.zip

COPY ./conf/* .

COPY ./tools/script.sh .

WORKDIR /

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]