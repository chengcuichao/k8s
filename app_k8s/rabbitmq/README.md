1、镜像用的是docker现成的镜像：
rabbitmq:3.6.6-management-alpine

2、直接创建：
kubectl create -f rabbitmq.yml

3、修改ingress-nginx的配置文件：
  kubectl edit configmap tcp-services -n ingress-nginx
  15672: "basic-app/rabbitmq-management:15672"
  5672: "basic-app/rabbitmq:5672"

4、验证打开rabbitmq的管理地址：
http://192.168.78.1:15672