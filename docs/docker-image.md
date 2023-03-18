### 列出docker镜像

``` dockerfile
docker images
```

### 探求镜像是如何构建出来的

``` dockerfile
docker history mysql8
```

- mysql8 此处参数值为镜像名称或者ID都可以

#### FROM

    通常在ubuntu基础上构建，也可以基于其他镜像，比如自己构建的其他镜像（mysql8）

### CMD

    该指令用于指定一个容器启动时要运行的命令，有点类似于RUN指令，只是RUN指令是指定镜像被构建时要运行的命令，而CMD是指定容器被启动时运行的命令
    不带参数：CMD ["/bin/true"]
    带参数：CMD ["/bin/bash", "l"]
    在docker run 命令末尾没有指定要运行的命令时，如果Dockerfile中有CMD命令就会运行；如果run命令结尾指定了要运行的命令，Dockerfile中CMD指令将被覆盖而不会运行
    在Dockerfile中只能指定一条CMD指令，如果指定了多条指令，也只会运行最后一条指令

### ENTRYPOINT

    该指令于CMD指令非常类似，ENTRYPOINT指令不会被docker run 结尾的命令覆盖，实际上docker run  命令行中指定的任何参数都会被当作参数传递给ENTRYPOINT中指定的命令
    例如： ERTRYPOINT["/usr/sbin/nginx", "-g", "daemon off"] 指令中"-g", "daemon off"参数可以在docker run 命令后面指定

### RUN

    示例：RUN apt-get -yqq update && apt-get -yqq install mysql-server-8.0
    exec格式的RUN指令：RUN["apt-get", "install", "-y", "nginx"]

### EXPOSE

    公开镜像的端口

### WORKDIR

    用来指定从镜像创建一个容器时，在容器内部设置一个工作目录，ENTRYPOINT、/和CMD指定的程序会在这个目录下执行
    可以在docker run 命令中使用 -w 在运行时覆盖工作目录（覆盖Dockerfile中设置的，如果设置的话）

### ENV

    用来在镜像构建过程中设置环境变量
    使用ENV设置多个环境变量 ENV RVM_PATH=/home/rvm RVM_ARCHFLAGS="-arch i486"
    在Dockerfile中使用环境变量：
        ENV TARGET_DIR /opt/app
        WORKDIR $TARGET_DIR      # 使用时前面加$符
    使用docker run 命令行的-e标志来传递环境变量，这些变量只会在运行时有效，Dockerfile中设置的ENV环境变量永久有效

### USER

    用来指定该镜像会以什么样的用户去运行
    使用docker run 命令中通过 -u 来覆盖Dockerfile中设置的值
    如果不指定用户，默认用户为root

### VOLUME

    用来向基于镜像创建的容器添加卷
    卷功能让我们可以讲数据（如源代码）数据库或者其他内容添加到镜像中而不是将这些内容提交到镜像中，并且允许我们在多个容器间共享这些内容
    可以同时指定多个卷 VOLUME ["/opt/project", "/data"]
    docker cp 和 VOLUME指令相关，并且也是很实用的命令，该命令允许从容器复制文件和复制文件到容器上

### ADD

    用来将构建环境下的文件和目录复制到镜像中
    示例： ADD software.lic /opt/application/software.lic 这里的ADD指令会将构建目录下的software.lic文件复制到镜像中的/opt/application/software.lic，指向源文件的位置参数可以是一个URL，或者构建上下文或环境中文件名或者目录。不能对构建目录或者上下文之外的文件进行ADD操作
    在ADD文件时，docker通过参数末尾是否有/来判断是目录还是文件
    在ADD中使用URL的示例： ADD http:wordpress.com/latest.zip /root/wordpress.zip ，ADD指定遇到压缩包的话会自动解压文件
    如果目的位置不存在的话，docker会为我们创建这个全路径。包括路径中的任何目录
    新创建的文件和目录模式为0755，并且uid和gid都是0

### COPY

    该指令和ADD非常相似，不同的是COPY只关心在构建上下文中复制本地文，而不会去做文件提取和解压
    示例： COPY conf.d/ /etc/apache2/ 这条指令将会把本地conf.d目录中的文件复制到/etc/apache2/目录中，文件源路径必须是一个与当前构建环境相对的文件或目录，本地文件都放到和Dockerfile同一个目录下，不能复制该目录之外的任何文件
    COPY指令的目的位置必须是容器的一个绝对路径，如果目标位置不存在，docker会自动创建

### LABEL

    用于为docker镜像添加元数据。元数据以键值对的形式展现
    示例： LABEL version="1.0" lication="New York" 
    使用docker inspect cname ,cname为容器名 来查看容器标签

### STOPSIGNAL

    用来设置停止容器时发送什么系统调用信号给容器，这个信号必须是内核系统调用表中合法的参数

### ARG

    用来定义可以在docker build 命令运行时传递给构建运行时的变量,我们只需在构建时使用--build-arg标志即可
    示例 
        ARG build
        ARG webapp_user=user
        上面例子中我们给第二条ARG指令指定了一个默认值，如果构建时，没有为该参指定值，就使用这个默认值，下面看下如何在docker build 中使用这些参数
        docker build --build-arg build=1234 -t iname .  此时build变量会被设置为1234，webapp_user会使用默认值user
    使用ARG来传递证书或者密钥之类的是不安全的，会在镜像构建历史中暴露
    docker 中与定义了一些ARG变量，可以在构建时直接使用，如： HTTP_PROXY FTP_PROXY 等

### ONBUILD

    能为镜像添加触发器（trigger）。当一个镜像被用作其他镜像的基础镜像时（比如用户镜像需要从某未准备好的位置添加源代码，或者用户需要执行特定于构建镜像的环境的构建脚本），该镜像中的触发器将会被执行
    触发器可以是任何构建指令，示例：
        ONBUILD ADD . /app/src
        ONBUILD RUN cd /app/src && make
    ONBUILD 触发器只会在自镜像中执行，而不会在孙子镜像中执行
    有几条指令是不能用在ONBUILD指令中的，包括FROM、MAINTAINER和ONBUILD本身，之所以这样规定是为了放置在Dockerfile构建过程中产生递归调用的问题

### DockerFile的ADD和COPY的区别

    COPY指令和ADD指令的唯一区别在于：是否支持从远程URL获取资源。
    COPY指令只能从执行docker build所在的主机上读取资源并复制到镜像中。而ADD指令还支持通过URL从远程服务器读取资源并复制到镜像中。
    相同需求时，推荐使用COPY指令。ADD指令更擅长读取本地tar文件并解压缩。

### 分层, 优化推送和拉取镜像的大小

    在构建镜像时可以分层，下一层依赖上一层，每次改变某一层时，后续的每一层都会发生变化。更改前面的某些层意味着你需要重新构建、重新推送和重新拉取，才能将镜像部署到开发中
    举个例子：第一层构建一个base os, 第二层增加 server.js,第三层增加node（准确点说：每条指令创建一层）
        如果server.js发生变化，则第二和第三层都需要拉取和推送
        如果顺序改为：第一层构建一个base os, 第二层增加node, 第三层增加 server.js。 此时server.js变化时只需要第三层拉取和推送
        结论： 各层的排序，按照发生变化的概率由小到大顺序排列

### 镜像安全

    任何机密数据和镜像永远不要混在一起（就像不能向github公开仓库中提交机密信息一样）
    例如不要构建包含密码的镜像，这一条不仅适用于最终层，镜像中任何一层都不可以。

### 多阶段构建镜像

    将编译代码作为构建的一部分感觉很自然，这是最简单的利用程序构建容器镜像的方法。然而这样的问题在于，所有不必要的开发工具都会遗留下来，通常这些工具都很大，一旦进入镜像内部，就会降低部署速度。为了解决这个问题，Docker引入了多阶段构建。如果采用多阶段构建，而不是生成一个镜像，则Docker文件实际上会生成多个镜像。
    例如：构建一个包含react前端，然后将其嵌入golang程序中。我们可以将该Dockerfile分为两个阶段，
        该Dockerfile会生成两个镜像，第一个是构建镜像，其中包含go编译器、react工具链以及该程序代码。第二个是部署镜像，其中包含编译好的二进制文件。利用多阶段构建来构建容器可以让最终的镜像缩小数百兆。该Dockerfile生成的镜像最终只有20多MB（多阶段构建部署时候只需要最部署运行最终的镜像）,Dockerfile示例代码如下：

``` dockerfile
# STAGE 1: build
FROM golang***** AS build
RUN ****
WORKDIR /go/src/kuard
# copy all source in
COPY . .
ENV ***
...
RUN build/build.sh
# STAGE 2: Deployment
USER nobody:nobody
# --from后的参数来自第二行 AS build， 也就是多阶段构建时候，COPY的时候，选择的内容来自哪一个镜像，目的：从构建器镜像中复制文件。
COPY --from=build /go/bin/kuard /kuard
CMD ["/kuard"]
```
    