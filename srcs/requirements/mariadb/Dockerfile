FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install mariadb-server -y

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]