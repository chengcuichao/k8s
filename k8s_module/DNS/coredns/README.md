1、下载创建脚本：
git clone https://github.com/coredns/deployment.git

2、创建coredns：
cd ./kubernetes
./deploy.sh | kubectl apply -f -

3、删除：
kubectl delete --namespace=kube-system deployment kube-dns

注：如果dns的地址不是10.254.0.2，需要修改clusterIP: 10.254.0.2,先创建service.yml，在根据以上创建coredns：
kubectl create -f service.yml
