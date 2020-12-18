#!/bin/sh

sudo newgrp docker
docker-compose --version
docker --version

python3 --version
g++ --version
libreoffice --version


echo "if you executed dual-boot-clock.sh, go to windows and update clock"