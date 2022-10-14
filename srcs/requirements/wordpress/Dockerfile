FROM debian:buster

RUN apt-get update && apt-get install php-fpm php-common php-mbstring php-xmlrpc php-gd php-xml php-mysql php-cli php-zip php-curl -y && apt-get install unzip && apt-get install curl

WORKDIR /tmp/

RUN curl -LO https://wordpress.org/latest.zip

RUN unzip latest.zip

COPY ./conf/* .

COPY ./tools/script.sh .

WORKDIR /

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]