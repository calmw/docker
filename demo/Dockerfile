FROM ubuntu
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

ENV GOPROXY = https://goproxy.cn

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y curl
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y rustc
RUN apt-get install -y cargo
RUN apt-get install -y golang
RUN apt-get install -y python3

VOLUME ["/project", "/data"]






