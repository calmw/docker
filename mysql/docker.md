#### docker 登陆

    docker login

#### build 镜像

    docker build -t="镜像名称" . 
    可以从GitHub仓库构建镜像 docker build -t="镜像名称" git@github.com:docker/docker,把后面.换成了仓库地址，前提是这个仓库的跟目录下面存在Dockerfile文件
    也可以用-f来指定Dockerfile文件，这个文件不必命名为Dockerfile，例如： docker build -t="镜像名称" -f path/file

#### 运行docker容器

    docker run -d -p 3306 --name cname imane -v pathA:pathB 
    -d 
    -p 指定容器要公开的端口
        查看端口映射：docker port mysql8 3306
        或者直接-P用大写的-P来公开Dockerfile中EXPOSE指令公开的所有端口
        其他用法 -p 8080:80 将容器的80端口绑定到宿主机的8080端口
        其他用法 -p 127.0.0.1:80:8080 将容器的8080端口绑定到宿主机的127.0.0.1这个IP的8080端口上
    --name 指定容器名称
    cname 自己指定的容器名称,也就是从image镜像创建了一个名为cname的容器
    imane build过的镜像名称
    -v 使用宿主机pathA目录挂在到容器pathB目录，可以先在Dockerfile中加入 RUN makedir -p pathB ,然后在启动容器是加入参数-v来指定宿主机的目录去挂载到容器的pathB

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

#### 删除镜像

    docker rmi mysql8 redis
    mysql8 为镜像名称,后跟多个镜像名称时，同时删除多个镜像
    docker rmi `dicker images -a -q` 删除所有镜像

#### 将镜像推送到 docker hub

    docker push mysql8
    mysql8 为镜像名称