FROM debian:buster

ENV DATABASE_NAME=wordpress MYSQL_ROOT_PASSWORD=Yassine@1337 MYSQL_USER=ybouali

RUN apt update -y && apt -y install mariadb-server \
                            mariadb-client

COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./tools/* /tmp/

RUN /tmp/script.sh

# ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]

CMD ["mysqld"]