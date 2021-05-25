#!/bin/bash

cd /opt/apps/exim
chown -R 100:100 ./log
chmod -R 755 ./log
chmod -R 644 ./log/*

docker-compose up -d exim
