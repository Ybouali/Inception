FROM debian:buster

RUN apt update && apt -y install vsftpd

RUN rm -rf /etc/vsftpd.conf

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

COPY ./tools/script.sh /tmp/script.sh

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]