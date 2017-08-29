# GEMPAK Docker

[![Travis Status](https://travis-ci.org/mjames-upc/gempak-docker.svg?branch=master)](https://travis-ci.org/mjames-upc/gempak-docker)

This repository contains files necessary to build and run a Docker container for the latest Unidata [GEMPAK](http://www.unidata.ucar.edu/software/gempak/) distribution. This image is built on top of the `unidata/ldm-docker` image and runs `ldmadmin` with GEMPAK-specific **ldmd.conf** and **pqact.conf** files. 

## Running the image

    mkdir data logs queues
    docker run -v `pwd`/etc:/home/ldm/etc -v `pwd`/data:/home/ldm/var/data -v `pwd`/queues:/home/ldm/var/queues -v `pwd`/logs:/home/ldm/var/logs -p 388:388 -it unidata/gempak:latest

By default the image does not use a password. You may secure your session with a password by using the `USEPASS` environmental variable to set a password for the session.  

    docker run -p 388:388 -e USEPASS="password" -P -it unidata/gempak

## Connecting to the image session
