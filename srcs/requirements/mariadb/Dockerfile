FROM debian:buster

RUN apt update -y && apt -y install mariadb-server

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]