FROM ubuntu
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

WORKDIR wkspace

RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y sudo
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y snap
RUN apt-get install -y snapd
RUN apt-get install -y locate
RUN apt-get install -y locales
RUN locale-gen en_US.UTF-8
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y rustc
RUN apt-get install -y cargo
RUN apt-get install -y golang
RUN apt-get install -y python3
RUN apt-get install -y less
RUN apt-get install -y make
RUN apt-get install -y ssh
RUN apt-get install -y systemd
RUN apt-get install -y systemctl
RUN apt-get install -y git

VOLUME ["/project", "/data"]


#EXPOSE 5000
EXPOSE 5001
EXPOSE 5002
EXPOSE 5003
EXPOSE 5004
EXPOSE 5005
EXPOSE 5006
EXPOSE 5007
EXPOSE 5008
EXPOSE 5009
EXPOSE 5010
EXPOSE 5011
EXPOSE 5012
EXPOSE 5013
EXPOSE 5014
EXPOSE 5015
EXPOSE 8545
EXPOSE 9632


# 运行容器
# 可以增加--cap-add，来解决在docker中运行出现 Operation not permitted
# chattr命令使用时需要CAP_LINUX_IMMUTABLE，而在docker是默认禁用的。解决办法是在docker启动时添加--cap-add参数(--cap-add LINUX_IMMUTABLE)。
# You need to start your container by this command to enable systemd.
# docker run -itd --privileged docker pull ubuntu:18.04 /usr/sbin/init

# sudo ./oneinstack/install.sh --nginx_option 1 --php_option 10 --phpcache_option 1 --php_extensions gmagick,fileinfo,imap,redis,mongodb
# docker run -itd --privileged=true --network=dev -p 5000:5000 -p 8545:8545 -p 9632:9632 -p 5001:5001 -p 5002:5002 -p 5003:5003 -p 5004:5004 -p 5005:5005 -p 5006:5006 -p 5007:5007 -p 5008:5008 -p 5009:5009 -p 5010:5010 -p 5011:5011 -p 5012:5012 -p 5013:5013 -p 5014:5014 -p 5015:5015   -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev



