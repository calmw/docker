#### docker 登陆

    docker login

#### build 镜像

    docker build -t="镜像名称" . 
    可以从GitHub仓库构建镜像 docker build -t="镜像名称" git@github.com:docker/docker,把后面.换成了仓库地址，前提是这个仓库的跟目录下面存在Dockerfile文件
    也可以用-f来指定Dockerfile文件，这个文件不必命名为Dockerfile，例如： docker build -t="镜像名称" -f path/file

#### 运行docker容器

    docker run -d -p 3306 --name cname imane -v pathA:pathB 
    -d 
    -p 指定容器要公开的端口，也就是 --publish
        查看端口映射：docker port mysql 3306
        或者直接-P用大写的-P来公开Dockerfile中EXPOSE指令公开的所有端口
        其他用法 -p 8080:80 将容器的80端口绑定到宿主机的8080端口
        其他用法 -p 127.0.0.1:80:8080 将容器的8080端口绑定到宿主机的127.0.0.1这个IP的8080端口上
    --name 指定容器名称
    cname 自己指定的容器名称,也就是从image镜像创建了一个名为cname的容器
    imane build过的镜像名称
    -v 使用宿主机pathA目录挂在到容器pathB目录，可以先在Dockerfile中加入 RUN makedir -p pathB ,然后在启动容器是加入参数-v来指定宿主机的目录去挂载到容器的pathB
    运行失败，可以试下这个命令：
        docker run -itd -P --name cname imane -v pathA:pathB 

#### 查看运行容器的端口映射

    docker port mysql 3306
        mysql 运行的容器名称，非镜像名称
        3306 容器内程序开放的端口
        结果为映射到本机的端口

#### docker networking

    docker network create app  #创建一个app的docker网络

#### 重启redis容器

    docker restart redis

#### 查看正在运行的docker容器

    docker ps

#### 检查容器的日志

    docker logs mysql 
    mysql 为容器名称
    后面还可加-f参数，可以达到与执行 tail -f 一样的效果

#### 列出容器的进程

    docker top mysql
    mysql 为容器名字

#### 删除容器

    docker rm mysql 
    mysql 为容器名称

#### 列出镜像

    docker iamges

#### 删除镜像

    docker rmi mysql8 redis
    mysql8 为镜像名称,后跟多个镜像名称时，同时删除多个镜像
    docker rmi `dicker images -a -q` 删除所有镜像

#### 将镜像推送到 docker hub

    docker push mysql8
    mysql8 为镜像名称

- 需要打tag的，可参考 [**打tag推送**](./docker-image.md)

#### 进入docker容器bash

    docker exec -it b30062adc08c /bin/bash
    b30062adc08c 容器ID或者使用容器名称

#### docker compose

    docker编配工具
    使用docker compose 可以用一个yaml文件定义一组要启动的容器，以及容器运行时的属性，定义好文件后，使用docker-compose -d up命令，以守护进程的方式来启动compose
    docker-compose ps, 类似于docker ps 查看正在运行的容器服务
    docker-compose stop 停止正字运行的服务
    docker-compose rm 删除正在运行的服务
    docker-compose 的方式，可以使用复杂一些的docker run 命令代替
    docker-compose示例：docker-compose.yml

```
web:
    image: webapp
    command: python app.py
    ports:
    - "5000:5000"
    volumes:
    - .:/composeapp
    links:
    - redis
redis:
    image: redis

```

#### 限制资源使用

    Docker公开了Linux内核提供的cgroup技术，并在此之上提供了限制应用程序使用资源量能力。K8s同样使用这些功能来限制每个pod使用的资源
    Cgroup是Control Groups的缩写，是Linux内核提供的一种可以限制、记录、隔离进程组所使用的物理资源（如cpu、内存、磁盘、IO等等）的机制
    Cgroup是一种资源控制手段，也是容器隔离的6个名称空间的一种实现手段，每个容器相当于一个进程    
    在容器中运行应用程序的主要优势之一就是能够限制资源的使用。如此一来多个应用程序就可以在同益精鉴赏共存，而且还可以确保合理的使用。
        1）如果想设置200MB内存和1GB交换空间，则可以使用docker命令的中的 --memeory和--memory-swap 
        2)如果想限制CPU使用，则可以使用docker命令的中的--cpu-shares
        示例：
            docker run --cpu-shares 1024 --memory 200m --memeory-swap 1G
    内存
        -m 或 –memory :
        –memory-swap * ：此命令依赖于-m
    CPU
        CPU为按比例分配
        –cpus=<value> 使用value核cpu，比如cpu为双核，可以设置–cpus=”1.5″，表示有1.5核cpu分配给该容器
        –cup-shares：当有多个docker的时候，所有docker按比例分配cpu资源，如果其他docker空闲的话，仅有一个docker繁忙，则他可以用完所有cpu
        –cpuset-cpus：指定docker运行在哪个cpu上，比如，4核cpu编号为[0-3]
        默认设置下，所有容器可以平等地使用主机 CPU 资源并且没有限制。docker 可以通过-c或–cpu-shares设置容器使用 CPU 的权重。如果不指定，默认值为 1024。

#### 清理

    Docker提供了一个名为docker system prune的工具，可用于常见清理。这个工具将删除所有停止的容器、所有未标记的镜像以及构建过程中缓存下来的所有未使用的镜像层

