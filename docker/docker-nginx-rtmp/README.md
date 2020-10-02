如何快速搭建RTMP服务器
==================================

用Docker快速搭建RTMP服务器
----------------------------------

这里我们用到了[tiangolo/nginx-rtmp](https://hub.docker.com/r/tiangolo/nginx-rtmp)项目的工作成果，这简直太方便了，省去了不少复杂的工作。

但是这样得到的RTMP服务器，默认是不在云端存储视频流的。

配置Nginx
----------------------------------

1. **将nginx启动用户从nobody变成root**：默认情况下nginx启动后user为nobody，这个会导致录制视频存储不下来。
2. **配置存储参数**：默认情况下，record为off，需要修改成all（视频音频都记录），同时增加一些保存路径之类的配置。

将下面的内容存储为`nginx.conf`即可。

```
user root;

worker_processes auto;

rtmp_auto_push on;

events {}

rtmp {

    server {

        listen 1935;

        listen [::]:1935 ipv6only=on;    



        application live {

            live on;

            record all;

	    record_path /var/rec;

	    record_unique on;

        }

    }

}


```

扩展自己的Dockerfile（可跳过）
----------------------------------

如果不需要暴露更多的端口，则不需要修改Dockerfile，否则，就需要建立一个自己的Dockerfile，参考如下：

```
FROM tiangolo/nginx-rtmp
MAINTAINER volnet "volnet@tom.com"
COPY nginx.conf /etc/nginx/nginx.conf
EXPOSE 1935 80 443
```

然后记得运行命令编译一下，生成自己的docker镜像。

```
docker build -t "volnet/nginx-rtmp" .
```

运行docker容器
----------------------------------

在原容器的说明文档的基础上，扩展一个存储目录（`mkdir rec`），然后运行即可。

```
docker run -d -p 1935:1935 -p 80:80 -p 443:443 -v $PWD/rec:/var/rec --name nginx-rtmp volnet/nginx-rtmp
```

调试docker容器
----------------------------------

可以使用`docker exec`命令进入容器内部查看情况，以下仅为示例（在容器内运行ls命令）：

```
docker container ls
-- 得到容器ID

docker exec -i -t 12345（容器ID） ls
```

参考Linux命令
----------------------------------

1. 监控文件大小：`ls -ahl`
2. 查看网络实时流量：`nload`（[了解详情]((https://vircloud.net/linux/netmo-vnstat.html))）