## For Chris' general Ubuntu testing
## for current usage:
## docker run -it cmosetick/ubuntu14-test-platform-chris /bin/bash

## Use Ubuntu 14.04 LTS as basis for container
FROM ubuntu:14.04

MAINTAINER "Chris Mosetick" chris@revolutionanalytics.com

## Start in /root, not /
WORKDIR /root

## This is the container file system location where users can access data from their local systems with the -v option
VOLUME /data

## Remain current with a nearby/faster mirror
RUN sed -i 's@http://archive.ubuntu.com/ubuntu/@http://ubuntu.osuosl.org/ubuntu@g' /etc/apt/sources.list \
&& apt-get update -qq \
&& apt-get upgrade -y

RUN apt-get install -y --no-install-recommends \
    ed \
    locales \
    nano \
    wget \
    git \
    g++ \
    libcurl4-openssl-dev \
    curl
