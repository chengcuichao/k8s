1、先生成docker镜像：
cd ./dockerfile  && docker build -t tengine-php:5.6 .

2、将镜像上传至harbor镜像仓库：
docker tag elasticsearch:5.3.3 10.168.1.200/library/tengine-php:5.6
dcoekr push 10.168.1.200/library/tengine-php:5.6