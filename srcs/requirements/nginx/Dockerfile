FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install nginx -y 

WORKDIR /etc/nginx/ssl

COPY tools/* .

COPY conf/default /etc/nginx/conf.d/

ENTRYPOINT ["nginx", "-g", "daemon off;"]