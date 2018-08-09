1、在https://github.com/giantswarm/kubernetes-prometheus下载manifests-all.yaml，这个文件包含了所有要创建的内容。其中要修改的内容有：
    1)、镜像gcr.io/google_containers/kube-state-metrics:v0.5.0不能下载：
    将image: gcr.io/google_containers/kube-state-metrics:v0.5.0改为：144.202.127.156/google_containers/kube-state-metrics:v0.5.0
    2)、更改prometheus的配置文件：
    将prometheus-configmap.yml文件内容复制到......(大概在2306行)：
        apiVersion: v1
        data:
          prometheus.yaml: |
          ......
        kind: ConfigMap
        metadata:
          creationTimestamp: null
          name: prometheus-core
          namespace: monitoring
    3)、为每个容器配置时区：
        ......
        volumeMounts:
          - name: timezone-config
            mountPath: /etc/localtime
        ......
        volumes:
          - name: timezone-config
            hostPath:
              path: /usr/share/zoneinfo/Asia/Shanghai
        ......

2、将manifests-all.yaml文件上传，直接创建就行：
    创建：
        kubectl create -f manifests-all.yaml
    查看：
        kubectl get all -n monitoring
    删除：
        kubectl delete namespace monitoring
3、之后就可以根据nodeport访问prometheus和grafana：
    1)、打开http://192.168.78.1:30613/targets查看获取数据状态，如果是down的话是有问题的，得看日志及报错来查找原因。
        报context deadline exceeded prometheus的话可以连进pod内排查地址通不通：
            kubectl exec -it prometheus-core-79648bf5cc-p825p /bin/sh -n monitoring
        地址通的话得查看prometheus的配置文件scrape_timeout参数是否设的太低。

- name: timezone-config
          mountPath: /etc/localtime

- name: timezone-config
        hostPath:
          path: /usr/share/zoneinfo/Asia/Shanghai