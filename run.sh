#!/bin/bash
sudo docker build --no-cache -t unidata/gempak:latest -f Dockerfile.gempak .
for dir in logs queues data; do 
  if [ ! -d $dir ]; then
    mkdir $dir
  fi
done
sudo docker run -v `pwd`/etc:/home/ldm/etc:Z -v `pwd`/data:/home/ldm/var/data:Z -v `pwd`/queues:/home/ldm/var/queues:Z -v `pwd`/logs:/home/ldm/var/logs:Z -p 388:388 -it unidata/gempak:latest
