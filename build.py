
import os
if os.path.exists('/opt/docker-exim'):
  os.chdir('/opt/docker-exim')
  os.system('docker build -t exim:4.92 .')
  os.system('docker tag exim:4.92 exim:latest')
