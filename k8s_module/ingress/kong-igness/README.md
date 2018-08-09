1、所有要创建的都写在了一个文件里面，修改了以下内容：
    1)、增加了ceph的secret：
        apiVersion: v1
        kind: Secret
        metadata:
          namespace: kong
          name: ceph-secret
        type: "kubernetes.io/rbd"
        data:
          key: QVFEYmVRTmJZQ1B4TFJBQUg0QS9Tb01NZjF6NHB3L0p1Y3ZUQnc9PQ==

     2)、为postgres增加了持久化存储，增加所有的程序的资源限制。
2、安装及测试：
    1)、安装：
        kubectl create -f kong-ingress.yml
    2)、先安装一个测试程序及ingress，在通过运行以下命令访问：
        curl -vvvv http://192.168.78.1:31646 -H "Host:foo.bar"   nodeip:kong-proxy的nodeport
        也可以修改host文件，直接在浏览器访问https://foo.bar:31646：
        192.168.78.1 foo.bar
参考github文档：https://github.com/Kong/kubernetes-ingress-controller