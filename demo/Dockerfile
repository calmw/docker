FROM ubuntu
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

ENV GOPROXY = https://goproxy.cn

WORKDIR wkspace

RUN apt-get update
RUN apt-get install -y vim
RUN apt-get install -y sudo
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping
RUN apt-get install -y rustc
RUN apt-get install -y cargo
RUN apt-get install -y golang
RUN apt-get install -y python3

VOLUME ["/project", "/data"]

# web
EXPOSE 80
# restful api 1
EXPOSE 8080
# restful api 2
EXPOSE 8090
# service 1
EXPOSE 9000
# service 2
EXPOSE 9001
# 宝塔
EXPOSE 8600
# redis
EXPOSE 6379
# mysql
EXPOSE 3306
# mongodb
EXPOSE 27017

# 运行容器
# 可以增加--cap-add，来解决在docker中运行出现 Operation not permitted
# chattr命令使用时需要CAP_LINUX_IMMUTABLE，而在docker是默认禁用的。解决办法是在docker启动时添加--cap-add参数(--cap-add LINUX_IMMUTABLE)。
# docker run -itd -p 80:80 -p 8080:8080 -p 9000:9000 -p 9001:9001 -p 8600:8600 -p 3306:3306 -p 27017:27017 -p 6379:6379  -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev

# 安装宝塔
# sudo mkdir bt && cd bt && wget -O install.sh https://download.bt.cn/install/install-ubuntu_6.0.sh && sudo bash install.sh ed8484bec





