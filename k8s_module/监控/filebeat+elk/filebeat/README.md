1、先生成docker镜像：
cd ./dockerfile  && docker build -t 144.202.127.156/library/filebeat:5.3.3 .

2、将镜像上传至harbor镜像仓库：
docker push 144.202.127.156/library/filebeat:5.3.3

3、创建测试nginx镜像：
cd ./nginx  && docker build -t 144.202.127.156/library/nginx:1.12 .
docker push 144.202.127.156/library/nginx:1.12

4、这个需要将filebeat与要收集日志容器合起来组成一个pod，现在先创建测试：
kubectl -f filebeat-test.yml

5、最后打开kibana，通过node_ip:node_port来访问，在index pattern页面的inde name输入：nginx_access_*，之后就会出现@timestamp



注意：
    1、一共是两个镜像，得把生成的日志目录挂载到filebeat的目录上。
