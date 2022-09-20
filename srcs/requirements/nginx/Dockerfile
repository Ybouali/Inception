FROM debian:buster

RUN apt-get update && apt-get install nginx -y 

WORKDIR /etc/nginx/ssl

COPY tools/* .

WORKDIR /

RUN mkdir -p /run/nginx

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

# RUN rm /etc/nginx/sites-available/default

# COPY conf/default /etc/nginx/sites-available/


ENTRYPOINT ["nginx", "-g", "daemon off;"]
