1、先生成docker镜像：
cd ./dockerfile  && docker build -t 144.202.127.156/library/kibana:5.3.3 .

2、将镜像上传至harbor镜像仓库：
docker push 144.202.127.156/library/kibana:5.3.3

3、在kubernetes创建kibana：
kubectl create -f kibana-all.yml