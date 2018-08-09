FROM alpine:edge
MAINTAINER chengcuichao

RUN apk update &&  \
    apk add --no-cache openjdk8 shadow sudo && \
    wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.3.3.tar.gz && \
    tar zxvf elasticsearch-5.3.3.tar.gz -C /usr/local/  && \
    useradd elastic && \
    chown -R elastic:elastic  /usr/local/elasticsearch-5.3.3 && \
    rm -f  elasticsearch-5.3.3.tar.gz
COPY config/elasticsearch.yml /usr/local/elasticsearch-5.3.3/config
COPY run.sh  /root/
RUN chmod +x /root/run.sh

CMD /root/run.sh