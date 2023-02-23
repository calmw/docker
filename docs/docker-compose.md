### Docker Compose配置常用字段

    字段	描述
    build	指定Dockerfile文件名（要指定的Dockerfile文件需要在build标签的子级标签中用dockefile标签指定）
    dockerfile	构建镜像上下文路径
    context	可以是dockerfile路径，或者时执行git仓库的url地址
    images	指定镜像（已存在）
    command	执行命令，会覆盖容器启动后默认执行的命令（会覆盖dockefile中的CMD指令）
    container_name	指定容器名称，由于容器名称是唯一的，如果指定自定义名称，则无法scale指定容器数量。
    deploy	指定部署和运行服务相关配置，只能在swarm模式使用
    environment	添加环境变量
    networks	加入网络，引用顶级networks下条目
    network-mode	设置容器的网络模式
    ports	暴露容器端口，与-p相同，但是端口不能低于60
    volumes	挂载一个宿主机目录或命令卷到容器，命令卷要在顶级volumes定义卷名称
    volumes_from	从另一个服务或容器挂载卷，可选参数：ro和rw（仅版本‘2’支持）
    hostname	在容器内设置内核参数
    links	连接诶到另一个容器，- 服务名称[ : ]
    privileged	用来给容器root权限，注意是不安全的，true
    restart	重启策略，定义是否重启容器1、no，默认策略，在容器退出时不重启容器2、on-failure，在容器非正常退出时（退出状态非0），才会重启容器3、on-failure：3 在容器非正常退出时，重启容器，最多重启3次4、always，在容器退出时总是重启容器，5、unless-stopped，在容器退出时总是重启容器，但是不考虑在Docker守护进程启动时就已经停止了的容器。
    depends_on	此标签用于解决容器的依赖，启动先后问题。如启动应用容器，需要先启动数据库容器。php:depends_on:- apache- mysql

### Docker-compose常用命令

    运行这些命令需要结合docker-compose一起使用。
    且必须要在含有docker-compose.yml文件的目录中才可以使用，不然报错。
    命令	描述
    build	重新构建服务
    ps	列出容器
    up	创建和启动容器
    exec	在容器里面执行命令
    scale	指定一个服务容器启动数量
    top	显示正在运行的容器进程
    logs	查看服务容器的输出
    down	删除容器、网络、数据卷和镜像
    stop/start/restart	停止/启动/重启服务