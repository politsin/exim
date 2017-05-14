#!/bin/bash

chown -R 100:100 /opt/docker-exim/log
chmod -R 755 /opt/docker-exim/log
chmod -R 644 /opt/docker-exim/log/*

cd /opt/docker-exim
docker-compose up -d docker-exim
