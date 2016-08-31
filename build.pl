#!/usr/bin/perl

use strict;
use warnings;
chdir("/opt/docker-exim");
system("docker build -t docker-exim .");
