FROM debian:buster

RUN apt update && apt -y install vsftpd

RUN mkdir -p /home/ftp/

COPY ./tools/script.sh /tmp/

COPY ./conf/vsftpd.conf /etc/vsftpd.conf

ENTRYPOINT [ "/bin/bash", "/tmp/script.sh" ]