#!/usr/bin/python

ver = "4.94"

import os

if os.path.exists('/opt/docker-exim'):
  os.chdir('/opt/docker-exim')
  os.system("docker build --tag exim:4.94 .")
  os.system("docker tag exim: 4.94 exim:latest")
# get travis repo
if os.environ['REPO']:
    repo = os.environ['REPO']
    bild = os.environ['TRAVIS_BUILD_NUMBER']
    os.system("docker build -f Dockerfile -t %s ." % (repo))
    os.system("docker tag %s %s:latest" % (repo, repo))
    os.system("docker tag %s %s:%s" % (repo, repo, ver))
    os.system("docker tag %s %s:%s.%s" % (repo, repo, ver, bild))
