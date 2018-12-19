1、先生成docker镜像：
cd ./dockerfile  && docker build -t elasticsearch:5.3.3 .

2、将镜像上传至harbor镜像仓库：
docker tag elasticsearch:5.3.3 10.168.1.200/library/elasticsearch:5.3.3
dcoekr push 10.168.1.200/library/elasticsearch:5.3.3