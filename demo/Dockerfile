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

VOLUME ["/project", "/data"]

# web
#EXPOSE 80
# web2
EXPOSE 8000
# web3
EXPOSE 8001
# web4
EXPOSE 8002
# web5
EXPOSE 8003
# web6
EXPOSE 8004
# web7
EXPOSE 8005
# web8
EXPOSE 8006
# web9
EXPOSE 8007
# web9
EXPOSE 8008
# web9
EXPOSE 8009
# restful api 1
EXPOSE 8080
# restful api 2
EXPOSE 8090
# service 0
EXPOSE 9000
# service 1
EXPOSE 9001
# service 2
EXPOSE 9002
# service 3
EXPOSE 9003
# 宝塔
EXPOSE 8600


# 运行容器
# 可以增加--cap-add，来解决在docker中运行出现 Operation not permitted
# chattr命令使用时需要CAP_LINUX_IMMUTABLE，而在docker是默认禁用的。解决办法是在docker启动时添加--cap-add参数(--cap-add LINUX_IMMUTABLE)。
# You need to start your container by this command to enable systemd.
# docker run -itd --privileged docker pull ubuntu:18.04 /usr/sbin/init

# sudo ./oneinstack/install.sh --nginx_option 1 --php_option 10 --phpcache_option 1 --php_extensions gmagick,fileinfo,imap,redis,mongodb
# docker run -itd --privileged=true --network=dev -p 8000:8000 -p 8001:8001 -p 8002:8002 -p 8003:8003 -p 8004:8004 -p 8005:8005 -p 8006:8006 -p 8007:8007 -p 8008:8008 -p 8009:8009 -p 8080:8080 -p 8090:8090 -p 9000:9000 -p 9001:9001 -p 9002:9002 -p 9003:9003 -p 8600:8600  -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev



