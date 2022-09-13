FROM debian:buster

RUN sudo apt-get update

RUN apt-get update && apt-get install -y sudo curl

RUN curl -LsS -O https://downloads.mariadb.com/MariaDB/mariadb_repo_setup

RUN bash mariadb_repo_setup --mariadb-server-version=10.5

RUN apt-get update && apt-get install -y sudo mariadb-server mariadb-client && apt-get install -y curl


EXPOSE 3306

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp

# ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]