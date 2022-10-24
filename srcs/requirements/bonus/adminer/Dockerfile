FROM debian:buster

RUN apt-get update && apt-get -y install adminer

COPY ./tools/script.sh /tmp/

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]

