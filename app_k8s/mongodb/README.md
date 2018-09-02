1、创建docker镜像：
docker build -t 144.202.127.156/library/mongodb:3.4.10 .

2、将镜像上传至harbor镜像仓库：
docker push 144.202.127.156/library/mongodb:3.4.10



3、在k8s上创建service和statefulset（前提已经创建好存储类）：
kubectl create -f mongodb.yml

4、连进去pod后创建副本集：
kubectl exec -it mongodb-0 /bin/sh
mongo
rs.initiate({_id: "icsoc", version: 1, members: [
       { _id: 0, host : "mongodb-0.mongodb.basic-app.svc.cluster.local:27017" },
       { _id: 1, host : "mongodb-1.mongodb.basic-app.svc.cluster.local:27017" },
       { _id: 2, host : "mongodb-2.mongodb.basic-app.svc.cluster.local:27017" }
 ]});

use admin
db.createUser(
  {
    user: "admin",
    pwd: "p@ssw0rd",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
db.auth("admin","P@ssw0rd")

use admin
db.createUser(
  {
    user: "myUserAdmin",
    pwd: "P@ssw0rd",
    roles: [ { role: "userAdminAnyDatabase", db: "admin" } ]
  }
)
db.auth("myUserAdmin","P@ssw0rd")