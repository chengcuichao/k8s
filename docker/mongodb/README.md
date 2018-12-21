1、先生成docker镜像(注意先生成中间镜像)：
docker  run -it -d --privileged   --name alpine alpine:3.7
docker exec -it alpine /bin/sh
  # echo never > /sys/kernel/mm/transparent_hugepage/enabled && echo never > /sys/kernel/mm/transparent_hugepage/defrag (在镜像里执行)
docker commit alpine alpine-alter:3.7
cd ./dockerfile  && docker build -t mongodb:3.4.10 .


docker run -itd -p 27017:27017 --name=mongodb3.6 mongodb:3.6

2、将镜像上传至harbor镜像仓库：
docker tag mongodb:3.4.10 10.168.1.200/library/mongodb:3.4.10
docker push 10.168.1.200/library/mongodb:3.4.10
