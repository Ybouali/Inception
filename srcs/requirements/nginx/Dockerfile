FROM debian:buster

RUN apt-get update && apt-get install nginx -y 

WORKDIR /etc/nginx/ssl

COPY tools/* .

WORKDIR /

RUN mkdir -p /run/nginx

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
