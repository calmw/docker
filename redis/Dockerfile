FROM ubuntu:23.04
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

RUN apt-get -yqq update && apt-get -yqq install redis-server redis-tools

ExPOSE 6379

ENTRYPOINT ["/usr/bin/redis-server"]

CMD []