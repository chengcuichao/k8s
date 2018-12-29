FROM alpine:latest
MAINTAINER chengcuichao

RUN apk update && \
   apk add --no-cache openjdk8 shadow sudo && \
   wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.6/elasticsearch-2.4.6.tar.gz && \
   tar zxvf elasticsearch-2.4.6.tar.gz -C /usr/local/ && \
   mv /usr/local/elasticsearch-2.4.6 /usr/local/elasticsearch && \
   rm -f elasticsearch-2.4.6.tar.gz && \
   /usr/local/elasticsearch/bin/plugin  install mobz/elasticsearch-head && \
   mkdir /usr/local/elasticsearch/plugins/ik && \
   wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v1.10.6/elasticsearch-analysis-ik-1.10.6.zip && \
   unzip elasticsearch-analysis-ik-1.10.6.zip -d /usr/local/elasticsearch/plugins/ik/ && \
   rm -f elasticsearch-analysis-ik-1.10.6.zip && \
   useradd elastic


COPY config/elasticsearch.yml /usr/local/elasticsearch/config

CMD chown -R elastic:elastic  /usr/local/elasticsearch && sudo -H -u elastic sh /usr/local/elasticsearch/bin/elasticsearch