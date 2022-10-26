FROM debian:buster

RUN apt-get update && apt-get -y install adminer && apt-get -y install wget

RUN mkdir -p /usr/share/adminer

RUN wget "http://www.adminer.org/latest.php" -O /usr/share/adminer/latest.php

COPY ./tools/script.sh /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]

