FROM debian:buster

RUN apt-get update && apt-get upgrade && apt-get install mariadb-server -y

COPY ./tools/* /tmp

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]