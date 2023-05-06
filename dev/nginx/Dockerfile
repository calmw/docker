FROM nginx
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

WORKDIR wkspace

RUN apt-get -y update
RUN apt-get install -y vim
RUN apt-get install -y net-tools
RUN apt-get install -y iputils-ping

VOLUME ["/etc/nginx/conf.d","/www","/logs"]

EXPOSE 8001
EXPOSE 8002
EXPOSE 8003
EXPOSE 8004
EXPOSE 8005
EXPOSE 8006
EXPOSE 8007
EXPOSE 8008
EXPOSE 8009
EXPOSE 9001
EXPOSE 9002
EXPOSE 9003
EXPOSE 9004
EXPOSE 9005
EXPOSE 9006
EXPOSE 9007
EXPOSE 9008
EXPOSE 9009

# 运行容器
# docker run -itd --privileged=true --network=dev  --link php8.1 -p 8001:8001 -p 8002:8002 -p 8003:8003 -p 8004:8004 -p 8005:8005 -p 8006:8006 -p 8007:8007 -p 8008:8008 -p 8009:8009 -p 9001:9001 -p 9002:9002 -p 9003:9003 -p 9004:9004 -p 9005:9005 -p 9006:9006 -p 9007:9007 -p 9008:9008 -p 9009:9009 -v /Users/cisco/Desktop/workspace/docker/dev/lnmp/nginx/conf/conf.d:/etc/nginx/conf.d -v /Users/cisco/Desktop/workspace/docker/dev/lnmp/nginx/www:/www -v /Users/cisco/Desktop/workspace/docker/dev/lnmp/nginx/logs:/logs --name nginx nginx



