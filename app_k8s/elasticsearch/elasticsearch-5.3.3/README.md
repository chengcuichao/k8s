1、先生成docker镜像：
cd ./dockerfile  && docker build -t 144.202.127.156/library/elasticsearch:5.3.3 .

2、将镜像上传至harbor镜像仓库：
docker push 144.202.127.156/library/elasticsearch:5.3.3

3、在kubernetes创建es：
kubectl create -f elasticsearch.yml

4、修改ingress-nginx的配置文件：
  kubectl edit configmap tcp-services -n ingress-nginx

5、验证：
curl -XGET 'http://192.168.78.1:9200/_cat/nodes?pretty'