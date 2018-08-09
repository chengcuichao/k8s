1、先生成docker镜像：
cd ./dockerfile  && docker build -t 144.202.127.156/library/logstash:5.3.3 .

2、将镜像上传至harbor镜像仓库：
docker push 144.202.127.156/library/logstash:5.3.3

3、在kubernetes创建logstash：
    1)、创建configmap（配置文件目录包含所有的日志收集配置文件）：
        kubectl create configmap logstashconfig --from-file=./dockerfile/config -n elk
    2)、创建logstash容器：
        kubectl create -f logstash-all.yml


4、新应用添加日志收集（旧应用添加新的监控点也需要更新）：
    1)、更新logstash的configmap：
        kubectl apply -f logstash-configmap.yml
      也可以将新加的内容直接加入到configmap：
        kubectl edit configmap logstashconfig -n elk
    2)、之后就要滚动更新logstash：
         kubectl patch deployment elk-logstash --patch '{"spec": {"template": {"metadata": {"annotations": {"version/config": "20180601" }}}}}' -n elk
        注：通过修改 pod annotations 的方式强制触发滚动更新。
    3)、查看是否更新成功。