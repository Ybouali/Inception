#!/bin/bash

mkdir -p /etc/run/data

useradd portainer

groupadd -f portainer

chown -R portainer:portainer portainer

chown -R portainer:portainer /etc/run/data

set -xe

exec $@

bash

# ./portainer/portainer