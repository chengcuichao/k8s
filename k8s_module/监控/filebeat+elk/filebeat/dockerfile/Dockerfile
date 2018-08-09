FROM alpine:edge
MAINTAINER chengcuichao

RUN wget https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-5.3.3-linux-x86_64.tar.gz && \
    tar xvf filebeat-5.3.3-linux-x86_64.tar.gz -C /usr/local && \
    rm -f filebeat-5.3.3-linux-x86_64.tar.gz && \
    mkdir -p /etc/filebeat

COPY config/filebeat.yml /etc/filebeat

CMD /usr/local/filebeat-5.3.3-linux-x86_64/filebeat -e -c /etc/filebeat/filebeat.yml