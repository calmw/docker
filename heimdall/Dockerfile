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
RUN wget https://golang.org/dl/go1.20.4.linux-arm64.tar.gz; tar -xvzf go1.20.4.linux-arm64.tar.gz -C /usr/lib; ln -s /usr/lib/go/bin/go /usr/bin/go; rm -f go1.1.20.4.linux-arm64.tar.gz
RUN apt-get install -y less
RUN apt-get install -y make
RUN apt-get install -y ssh
RUN apt-get install -y systemd
RUN apt-get install -y systemctl
RUN apt-get install -y git
RUN ln -s /usr/bin/python3.8 /usr/bin/python

VOLUME ["/project", "/data"]


EXPOSE 8545
EXPOSE 9545
EXPOSE 9632
EXPOSE 26656
EXPOSE 26657
EXPOSE 1317
EXPOSE 5672


# 运行容器
# 可以增加--cap-add，来解决在docker中运行出现 Operation not permitted
# chattr命令使用时需要CAP_LINUX_IMMUTABLE，而在docker是默认禁用的。解决办法是在docker启动时添加--cap-add参数(--cap-add LINUX_IMMUTABLE)。
# You need to start your container by this command to enable systemd.
# docker run -itd --privileged docker pull ubuntu:18.04 /usr/sbin/init

# sudo ./oneinstack/install.sh --nginx_option 1 --php_option 10 --phpcache_option 1 --php_extensions gmagick,fileinfo,imap,redis,mongodb
# docker run -itd --privileged=true --network=dev -p 8545:8545 -p 9545:9545 -p 9632:9632 -p 26656:26656 -p 26657:26657 -p 1317:1317 -p 5672:5672 -p 5001:5001 -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name heimdall polygon



