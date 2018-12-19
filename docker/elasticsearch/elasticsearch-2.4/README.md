1、先生成docker镜像：
cd ./dockerfile  && docker build -t elasticsearch:2.4 .

2、将镜像上传至harbor镜像仓库：
docker tag elasticsearch:2.4 10.168.1.200/library/elasticsearch:2.4
dcoekr push 10.168.1.200/library/elasticsearch:2.4


elastic地址：ip:9200
head地址：http://ip:9200/_plugin/head/