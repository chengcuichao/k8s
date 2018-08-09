FROM alpine:3.7
MAINTAINER chengcucihao

RUN apk update && \
     apk add --no-cache openjdk8 && \
     cd /usr/local && \
     wget http://mirrors.hust.edu.cn/apache/activemq/5.15.3/apache-activemq-5.15.3-bin.tar.gz && \
     tar -xf apache-activemq-5.15.3-bin.tar.gz  && \
     rm -f  apache-activemq-5.15.3-bin.tar.gz

CMD  /usr/local/apache-activemq-5.15.3/bin/activemq console