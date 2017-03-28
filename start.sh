#!/bin/bash

chmode 666 /opt/docker-exim/log

cd /opt/docker-exim
docker-compose up -d docker-exim

#openssl req -x509 -nodes -days 9000 -newkey rsa:2048 -keyout /opt/docker-exim/ssl/exim.key -out /opt/docker-exim/ssl/exim.cert

#docker run --rm \
#  -p 25:25 \
#  -v /opt/docker-exim/config/exim-smtp.conf:/etc/exim/exim.conf:ro \
#  -v /opt/docker-exim/log/:/var/log/exim/ \
#  -v /opt/docker-exim/ssl/:/etc/ssl/ \
#  docker-exim 
