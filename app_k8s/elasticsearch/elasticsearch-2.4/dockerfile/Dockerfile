FROM alpine:latest
MAINTAINER chengcuichao
RUN apk update
RUN apk add --no-cache openjdk8 shadow sudo
RUN wget https://download.elastic.co/elasticsearch/release/org/elasticsearch/distribution/tar/elasticsearch/2.4.6/elasticsearch-2.4.6.tar.gz
RUN tar zxvf elasticsearch-2.4.6.tar.gz -C /usr/local/ && rm -f elasticsearch-2.4.6.tar.gz
RUN /usr/local/elasticsearch-2.4.6/bin/plugin  install mobz/elasticsearch-head
RUN useradd elastic
RUN chown -R elastic:elastic  /usr/local/elasticsearch-2.4.6

COPY run.sh  /root/
RUN chmod +x /root/run.sh

CMD /root/run.sh
#CMD sudo -H -u elastic sh /usr/local/elasticsearch-2.4.6/bin/elasticsearch
