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

VOLUME ["/project", "/data"]


EXPOSE 6000
EXPOSE 6001
EXPOSE 6002
EXPOSE 6003
EXPOSE 6004
EXPOSE 6005
EXPOSE 6006
EXPOSE 6007
EXPOSE 6008
EXPOSE 6009
EXPOSE 6010
EXPOSE 6011
EXPOSE 6012
EXPOSE 6013
EXPOSE 6014
EXPOSE 6015



# 运行容器
# docker run -itd --privileged=true --network=dev -p 6000:6000 -p 6001:6001 -p 6002:6002 -p 6003:6003 -p 6004:6004 -p 6005:6005 -p 6006:6006 -p 6007:6007 -p 6008:6008 -p 6009:6009 -p 6010:6010 -p 6011:6011 -p 6012:6012 -p 6013:6013 -p 6014:6014 -p 6015:6015   -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev



