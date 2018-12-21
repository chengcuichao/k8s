1、rabbitmq镜像是用的现成的:
docker pull rabbitmq:3.6.6


docker run -itd  --name some-rabbit -p 15672:15672 rabbitmq:3.7.8-management-alpine