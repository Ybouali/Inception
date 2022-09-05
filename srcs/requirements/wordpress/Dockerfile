FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip -y && apt-get install unzip && apt-get install curl 

WORKDIR /tmp

RUN curl -LO https://wordpress.org/latest.zip

RUN unzip /tmp/latest.zip

WORKDIR /

# COPY /tmp/latest.zip/wordpress /var/www/