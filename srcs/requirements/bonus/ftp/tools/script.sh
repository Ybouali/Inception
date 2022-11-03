#!/bin/bash

chown nobody:nogroup /home/ftp

chmod a-w /home/ftp

mkdir -p /home/ftp/files

chmod a-w /home/ftp/files

service vsftpd start

vsftpd