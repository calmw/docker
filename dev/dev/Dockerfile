FROM ubuntu
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

WORKDIR wkspace

RUN apt-get -y update
RUN apt-get install -y ssh
RUN apt-get install -y vim
RUN apt-get install -y git
RUN apt-get install -y sudo
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y less
RUN apt-get install -y make
RUN apt-get install -y snapd
RUN apt-get install -y locate
RUN apt-get install -y locales
RUN locale-gen en_US.UTF-8
RUN apt-get install -y systemd
RUN apt-get install -y systemctl
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y python3
RUN apt-get install -y golang

VOLUME ["/project", "/data"]


EXPOSE 6000
EXPOSE 7000
EXPOSE 8000




# 运行容器
# docker run -itd --privileged=true --network=dev -p 6000:6000 -p 7000:7000 -p 8000:8000 -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev



