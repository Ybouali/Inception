FROM debian:buster

RUN apt-get update && apt-get install nginx=1.14.2-2+deb10u4 -y 

RUN mkdir -p /etc/nginx/ssl

COPY tools/* /etc/nginx/ssl/

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

ENTRYPOINT ["nginx", "-g", "daemon off;"]
