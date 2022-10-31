FROM debian:buster

RUN apt-get update && apt-get install -y redis-server

COPY ./conf/redis.conf /etc/redis/redis.conf

RUN chmod 777 /etc/redis/redis.conf

ENTRYPOINT [ "redis-server", "--protected-mode", "no" ]