#### 列出docker镜像

    docker images

#### 探求镜像是如何构建出来的

    docker history mysql8
    mysql8 此处参数值为镜像名称或者ID都可以

##### FROM

    通常在ubuntu基础上构建，也可以基于其他镜像，比如自己构建的其他镜像（mysql8）

#### CMD

#### RUN

    exec格式的RUN指令：RUN["apt-get", "install", "-y", "nginx"]

#### EXPOSE

#### ENTRYPOINT

#### WORKDIR

#### ENV

#### USER

#### VOLUME

#### ADD

#### COPY

#### LABEL

#### STOPSIGNAL

#### ARG

#### ONBUILD