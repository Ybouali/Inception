FROM debian:buster

RUN apt-get update -y && apt-get -y install mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]