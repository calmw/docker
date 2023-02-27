#### mysql container

    拉取最新镜像: docker pull mysql:latest
    启动容器: docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root -d mysql:latest

#### redis container

    拉取最新镜像: docker pull redis:latest
    启动容器: docker run -d -p 6379:6379 --name redis redis:latest

#### mongodb container

    拉取最新镜像: docker pull mongo:latest
    启动容器: // docker run --name mongo -p 27017:27017 -v $PWD/data:/data/db -d mongo:latest
             docker run --name mongo -p 27017:27017 -v /Users/cisco/Desktop/workspace/docker/data/mongo:/data/db -d mongo:latest

#### rabbitmq container

    拉取最新镜像: docker pull rabbitmq:3-management
    启动容器: docker run -d --hostname node_name --name rabbitmq -e RABBITMQ_DEFAULT_USER=guest -e RABBITMQ_DEFAULT_PASS=guest -p 15672:15672 -p 5672:5672 rabbitmq:3-management
    web-management: http://ip:15672

#### nginx container

    拉取最新镜像: docker pull nginx:latest
    启动容器: docker run --name nginx -p 80:80 -d nginx:latest

#### docker compose

    