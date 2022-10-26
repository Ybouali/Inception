#!/bin/bash

ln -sf /usr/share/adminer/latest.php /usr/share/adminer/adminer.php

echo "Alias /adminer.php /usr/share/adminer/adminer.php" | sudo tee /etc/apache2/conf-available/adminer.conf

a2enconf adminer.conf

service apache2 restart
# a2enconf adminer

# service apache2 reload

apachectl stop

apachectl -D FOREGROUND