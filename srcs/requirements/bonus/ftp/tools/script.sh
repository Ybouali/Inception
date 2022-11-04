#!/bin/bash

mkdir -p /var/run/vsftpd/empty

useradd ${USER_FTP}

usermod -p ${USER_FTP_PASSWORD} ${USER_FTP}

echo ${USER_FTP} >> /etc/vsftpd.userlist

vsftpd /etc/vsftpd.conf