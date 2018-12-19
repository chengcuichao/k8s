FROM alpine:latest
MAINTAINER chengcuichao

RUN apk update && \
   apk add --no-cache openjdk8 shadow sudo && \
   wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.6/elasticsearch-2.4.6.tar.gz && \
   tar zxvf elasticsearch-2.4.6.tar.gz -C /usr/local/ && rm -f elasticsearch-2.4.6.tar.gz && \
   /usr/local/elasticsearch-2.4.6/bin/plugin  install mobz/elasticsearch-head && \
   useradd elastic && \
   chown -R elastic:elastic  /usr/local/elasticsearch-2.4.6


COPY config/elasticsearch.yml /usr/local/elasticsearch-2.4.6/config

CMD sudo -H -u elastic sh /usr/local/elasticsearch-2.4.6/bin/elasticsearch
