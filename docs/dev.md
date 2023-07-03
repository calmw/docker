#### mysql container

    拉取最新镜像: docker pull mysql:latest
    启动容器: docker run --net=dev --name mysql8 -p 3306:3306 -v /Users/cisco/Desktop/workspace/docker/dev/lnmp/mysql/data:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=root -d mysql:latest

#### postgresql container

    拉取最新镜像: docker pull postgres:latest
    启动容器: docker run --net=dev --name postgres -e POSTGRES_USER=root -e POSTGRES_PASSWORD=123456 -d postgres

#### redis container

    拉取最新镜像: docker pull redis:latest
    启动容器: docker run --net=dev -d -p 6379:6379 --name redis redis:latest

#### mongodb container

    拉取最新镜像: docker pull mongo:latest
    启动容器: docker run --net=dev --name mongo -p 27017:27017 -v /Users/cisco/Desktop/workspace/docker/docker-data/mongo:/data/db -d mongo:latest  --wiredTigerCacheSizeGB 1.5

#### rabbitmq container

    拉取最新镜像: docker pull rabbitmq:3-management
    启动容器: docker run --net=dev -d --hostname node_name --name rabbitmq -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest -p 15672:15672 -p 5672:5672 rabbitmq:3-management
    web-management: http://ip:15672

#### nginx container

    拉取最新镜像: docker pull nginx:latest
    启动容器: docker run --net=dev --name nginx -p 80:80 -d nginx:latest

#### ubuntu container

    拉取最新镜像: docker pull ubuntu:latest
    启动容器: docker run -itd --name ubuntu -P ubuntu:latest

#### postgres container

    拉取最新镜像: docker pull ubuntu:latest
    启动容器: docker run --name postgres -p 5432:5432 -e POSTGRES_USER=root -e POSTGRES_PASSWORD=123456 -e POSTGRES_DB=dbname -e PGDATA=/var/lib/postgresql/data/pgdata -v /Users/cisco/Desktop/workspace/docker/dev/postgresql_data:/var/lib/postgresql/data  -d postgres

#### dev container

    镜像通过demo中Dockerfile构建
    启动本地测试容器: docker run -itd --network=dev -p 1000:1000 -p 1001:1001 -p 1002:1002 -p 8080:8080 -p 8090:8090 -p 9000:9000 -p 9001:9001 -p 9002:9002 -p 9003:9003 -p 8600:8600  -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project --name dev dev

#### baota container

    镜像: docker pull btpanel/baota
    启动本地测试容器: docker run -d --restart unless-stopped --name baota -p 8888:8888 -p 22:22 -p 443:443 -p 80:80 -p 888:888  -v /Users/cisco/Desktop/workspace/docker/dev/vhost:/www/server/panel/vhost  -v /Users/cisco/Desktop/workspace/docker/dev/vhost:/www/server/panel/vhost  -v /Users/cisco/Desktop/workspace/docker/dev/data:/data -v /Users/cisco/Desktop/workspace/docker/dev/project:/project btpanel/baota

#### docker compose

    启动命令：
        在docker-compose.yml同目录启动,守护进程模式启动：docker-compose up -d
        docker-compose up 
    删除docker-compose服务
        docker-compose rm
    查看在运行的服务
        docker-compose ps
    查看日志
        docker-compose logs
    停止服务
        docker-compose stop

    