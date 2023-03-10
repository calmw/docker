FROM ubuntu
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

ENV GOPROXY = https://goproxy.cn

RUN apt-get update
RUN apt-get install -y  vim
RUN apt-get install -y  net-tools
RUN apt-get install -y  iputils-ping
RUN apt-get install -y  curl
RUN apt-get -y install rustc
RUN apt-get -y install cargo
RUN apt-get -y install golang
RUN apt-get -y install python3

VOLUME ["/project", "/data"]






