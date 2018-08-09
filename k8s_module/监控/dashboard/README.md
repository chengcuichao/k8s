1、更改一下dashboard的镜像（可以换成自己的镜像源）：
image: 144.202.127.156/kubernetes/kubernetes-dashboard:v1.8.3
2、在此目录执行：
kubectl create -f .
3、查看是否创建成功：
kubectl get all -n kube-system