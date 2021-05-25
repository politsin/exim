#!/bin/bash

cd /opt/apps/exim
mkdir -p ./log
chown -R 100:100 ./log
chmod -R 755 ./log
chmod -R 644 ./log/*

# keys:
mkdir -p ./tls
openssl req -newkey rsa:4096 -new -nodes -x509 -days 3650 -keyout ./tls/private.pem -out ./tls/fullchain.pem -subj '/CN=exim'
openssl rsa -pubout -in ./tls/private.pem -out ./tls/public.pem
# dhparam:
openssl dhparam -out ./tls/dhparam-2048.pem 2048
chown -R 100:100 ./tls/*

docker-compose up -d exim
