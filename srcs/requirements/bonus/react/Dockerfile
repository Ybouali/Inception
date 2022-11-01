FROM debian:buster

RUN apt-get update && apt-get -y install curl

RUN curl -fsSL https://deb.nodesource.com/setup_current.x | bash

RUN apt-get update && apt-get -y install nodejs

RUN mkdir -p /portfolio

COPY ./tools/portfolio /portfolio

COPY ./tools/script/script.sh /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]