FROM ubuntu:23.04
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

RUN apt-get -yqq update && apt-get -yqq install docker-file-demo-server-8.0

ExPOSE 3306

ENTRYPOINT ["mysqld"]