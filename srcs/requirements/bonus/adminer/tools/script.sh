#!/bin/bash

a2query -m php7.3

ln -sf /adminer /usr/share/adminer/adminer/

a2enconf adminer

service apache2 reload

# apachectl start

apachectl -D FOREGROUND