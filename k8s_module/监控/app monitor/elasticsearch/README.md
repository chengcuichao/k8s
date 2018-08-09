1、先创建elastic_exporter.yml，需要修改的地方有：
    es.uri=http://elk-es.elk:9200 改成需要监控的es的域名
2、修改prometheus的配置文件，并强制更新(文件内容在prometheus_config里)：
    kubectl edit configmap prometheus-core -n monitoring
    kubectl patch deployment prometheus-core --patch '{"spec": {"template": {"metadata": {"annotations": {"version/config": "20180602" }}}}}' -n monitoring