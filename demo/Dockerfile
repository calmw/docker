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

VOLUME ["/project", "/data"]

# web
EXPOSE 80
# web2
EXPOSE 1000
# web3
EXPOSE 1001
# web4
EXPOSE 1002
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
# docker run -itd --network=dev -p 80:80 -p 1000:1000 -p 1001:1001 -p 1002:1002 -p 8080:8080 -p 8090:8090 -p 9000:9000 -p 9001:9001 -p 9002:9002 -p 9003:9003 -p 8600:8600  -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev


