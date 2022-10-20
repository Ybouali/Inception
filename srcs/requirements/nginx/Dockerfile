FROM debian:buster

RUN apt-get update && apt-get install nginx -y 

RUN mkdir -p /etc/nginx/ssl

COPY tools/* /etc/nginx/ssl/

RUN mkdir -p /run/nginx

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
