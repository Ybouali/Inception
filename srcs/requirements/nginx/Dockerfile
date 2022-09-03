FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install nginx -y && apt-get install openssl -y

RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=ybouali.42.fr" -addext "subjectAltName=DNS:ybouali.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;


COPY conf/default.conf /etc/nginx/sites-available/default.conf

CMD ["nginx", "-g", "daemon off;"]
