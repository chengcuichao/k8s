1、安装nginx-ingress：
kubectl create -f nginx-ingress.yml

文件下载地址：https://github.com/kubernetes/ingress-nginx/blob/master/deploy/mandatory.yaml
注：和源文件比更改了：
    1)、default-http-backend的镜像下载地址。
    2)、增加ingress-nginx的配置service配置文件（先创建nginx-ingress再创建service，不然会报错，externalIP的地址与nginx-ingress-controller宿主机地址一样）：
        apiVersion: v1
        kind: Service
        metadata:
          name: ingress-nginx
          namespace: ingress-nginx
        spec:
          externalIPs:
          - 192.168.78.5
          ports:
          - name: http
            port: 80
            targetPort: 80
            protocol: TCP
          - name: https
            port: 443
            targetPort: 443
            protocol: TCP
          selector:
            app: ingress-nginx

      由于是本地创建就用externalIPs
apiVersion: v1
kind: Service
metadata:
  name: ingress-nginx
  namespace: ingress-nginx
spec:
  externalIPs:
  - 192.168.78.1
  - 192.168.78.3
  - 192.168.78.4
  ports:
  - name: http
    port: 80
    targetPort: 80
    protocol: TCP
  - name: https
    port: 443
    targetPort: 443
    protocol: TCP
  selector:
    app: ingress-nginx