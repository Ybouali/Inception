#!/bin/bash

mkdir -p /var/run/vsftpd/empty

useradd -m ${USER_FTP} && echo "${USER_FTP}:${USER_FTP_PASSWORD}" | chpasswd

mkdir -p /home/${USER_FTP}/ftp

chmod 777 /home/${USER_FTP}/ftp

echo ${USER_FTP} >> /etc/vsftpd.userlist

vsftpd /etc/vsftpd.conf