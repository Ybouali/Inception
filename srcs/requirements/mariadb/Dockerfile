FROM debian:buster

RUN apt-get update -y && apt-get -y install mariadb-server mariadb-client

EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp

RUN mkdir /tmp/data

RUN  cp -r /var/lib/mysql/* /tmp/data/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]