FROM php:8.1-fpm-alpine
MAINTAINER wang "calm.wang@hotmail.com"
ENV REFRESHED_AT = 2023-02-19

WORKDIR wkspace

RUN docker-php-ext-install pdo_mysql

VOLUME ["/www"]

EXPOSE 9000

# 运行容器
# docker run -itd --privileged=true --network=dev -p 9000:9000 -v /Users/cisco/Desktop/workspace/docker/dev/lnmp/nginx/www:/www --name php8.1 php8.1



