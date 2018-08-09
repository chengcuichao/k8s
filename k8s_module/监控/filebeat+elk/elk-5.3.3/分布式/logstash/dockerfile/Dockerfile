FROM alpine:edge
MAINTAINER chengcuichao

RUN apk update &&  \
     apk add --no-cache openjdk8  bash && \
     wget https://artifacts.elastic.co/downloads/logstash/logstash-5.3.3.tar.gz && \
     mkdir /etc/logstash && \
     tar zxf logstash-5.3.3.tar.gz  -C /usr/local/ && \
     rm -f /logstash-5.3.3.tar.gz

COPY config /etc/logstash

CMD /usr/local/logstash-5.3.3/bin/logstash -f /etc/logstash/
