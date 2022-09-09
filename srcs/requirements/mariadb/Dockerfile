FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install mariadb-server -y && apt-get install vim -y

CMD ["/etc/init.d/mysqld", "start"]

ENTRYPOINT [ "tail", "-f" ]