1、prometheus_grafana.yml文件更新了以下内容：
    1)、为prometheus增加持久化存储，并增加可使用资源（以前资源不够用，老是重启）
    2)、为grafana增加了持久化存储。
    3)、把数据存留时间改为一个月- '-storage.local.retention=12h'


新加的内容为ceph-secret.yml,claim.yml,更改的内容在deplyment.yml里


注：更新之后如旧的容器一直处于Terminating状态，就执行下面命令强制删除：
    kubectl delete pod prometheus-core-84b776b585-lfwd6 --grace-period=0 --force -n monitoring