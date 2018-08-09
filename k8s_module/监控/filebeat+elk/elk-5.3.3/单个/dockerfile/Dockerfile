FROM alpine:edge
MAINTAINER chengcuichao

COPY logstash-5.3.3.tar.gz /
COPY kibana-5.3.3-linux-x86_64.tar.gz /
COPY elasticsearch-5.3.3.tar.gz /

RUN apk  update && \
     apk add --no-cache openjdk8 shadow sudo bash nodejs supervisor&& \
#     wget https://artifacts.elastic.co/downloads/logstash/logstash-5.3.3.tar.gz && \
#     wget https://artifacts.elastic.co/downloads/kibana/kibana-5.3.3-linux-x86_64.tar.gz && \
#     wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.3.3.tar.gz  &&
     useradd elk && \
     mkdir /etc/logstash && \
     mkdir /etc/supervisor && \
     tar zxf elasticsearch-5.3.3.tar.gz -C /usr/local/ && \
     tar zxf logstash-5.3.3.tar.gz  -C /usr/local/ && \
     tar zxf kibana-5.3.3-linux-x86_64.tar.gz   -C /usr/local/ && \
     chown -R elk:elk /usr/local/elasticsearch-5.3.3/  && \
     rm -f /usr/local/kibana-5.3.3-linux-x86_64/node/bin/*  && \
     rm -f /logstash-5.3.3.tar.gz && \
     rm -f /kibana-5.3.3-linux-x86_64.tar.gz && \
     rm -f /elasticsearch-5.3.3.tar.gz && \
     ln -s /usr/bin/node /usr/local/kibana-5.3.3-linux-x86_64/node/bin/node

COPY config/elasticsearch.yml /usr/local/elasticsearch-5.3.3/config
COPY config/kibana.yml /usr/local/kibana-5.3.3-linux-x86_6/config
COPY config/supervisord.conf /etc/supervisor
COPY config/logstash/logstash.config /etc/logstash

CMD /usr/bin/supervisord -c /etc/supervisor/supervisord.conf

