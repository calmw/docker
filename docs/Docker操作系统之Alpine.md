# Docker操作系统之Alpine

## 前言

这阵子我发现只要带着alpine前缀的镜像，相比于其它的镜像，体积都相对较小，例如下面这些

``` go
java:alpine  
nginx:alpine
```

后面通过了解，发现了其实这些java镜像，或者nginx镜像都依赖于某个linux操作系统，我们常见的操作系统有ubuntu、centos、debian。而这个alpine其实也是一个新的操作系统。但是它比其它的操作系统而言，体积更小，所以在他们的基础之上做的镜像，体积也会更小，常见的linux操作系统体积大小，如下所示

| REPOSITORY | TAG    | IMAGE ID     | VIRTUAL SIZE |
|------------|--------|--------------|--------------|
| alpine     | latest | 4e38e38c8ce0 | 4.799 MB     |
| debian     | latest | 4d6ce913b130 | 84.98 MB     |
| ubuntu     | latest | b39b81afc8ca | 188.3 MB     |
| centos     | latest | 8efe422e6104 | 210 MB       |

我们也就发现了 alpine的大小远远小于 其它的操作系统，因此制作出来的镜像大小也远远小于其它的

## Alpine操作系统

Alpine操作系统主要是面向安全的轻量级Linux发行版，它和其它的发行版不同之处在于，Alpine采用了musllibc 和
busybox以减少系统体积和运行时资源消耗，但功能上比busybox又完善的多
，因此越来越得到开源社区的青睐。在保持瘦身的同时，Alpine还提供了自己的包管理工具【CentOS是yum，ubuntu是
apt-get】，可以通过 [Alpine包查询网站](https://pkgs.alpinelinux.org/packages) ，来进行查看，例如下图所示，搜索自己需要安装的包进行查看

然后通过 apk add vim 来进行安装即可。

Alpine Docker镜像也继承了Alpine Linux发行版的优势，相比于其它的Docker镜像，它的容量体积非常小，仅仅只有5MB， 我们通过打开
DockerHub中[Alpine的官网](https://registry.hub.docker.com/_/alpine)

#### Alpine linux安装bash

#### docker容器

- 系统应该是 Alpine Linux LXD（Linux容器），那么入股在其中安装 bash shell呢
```shell
apk update
apk upgrade
apk add bash
```


#### 安装 bash 文档
apk add bash-doc

#### 安装 bash 自动命令补全
apk add bash-completion

#### 使用 bash 作为 shell
bash

# 需要从主机登录到 Alpine Linux LXD 虚拟机，比如我从kubernets进去
kubectl exec -it acme-orderer-0 /bin/bash

# 需要将 root shell 更改为 bash
vi /etc/passwd
# 查找用户名和默认 shell，比如 /bin/ash
# root:x:0:0:root:/root:/bin/ash
# 然后用 /bin/bash 替换
# root:x:0:0:root:/root:/bin/bash

