FROM debian:buster

RUN apt-get update -y && apt-get -y install mariadb-server=1:10.3.36-0+deb10u2

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp/

# ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]