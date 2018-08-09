FROM alpine:edge
MAINTAINER chengcuichao

RUN apk update &&  \
    apk add --no-cache openjdk8  nodejs && \
    wget https://artifacts.elastic.co/downloads/kibana/kibana-5.3.3-linux-x86_64.tar.gz && \
    tar zxf kibana-5.3.3-linux-x86_64.tar.gz   -C /usr/local/ && \
    rm -f /usr/local/kibana-5.3.3-linux-x86_64/node/bin/* && \
    rm -f /kibana-5.3.3-linux-x86_64.tar.gz && \
    ln -s /usr/bin/node /usr/local/kibana-5.3.3-linux-x86_64/node/bin/node

COPY config/kibana.yml /usr/local/kibana-5.3.3-linux-x86_64/config

CMD /usr/local/kibana-5.3.3-linux-x86_64/bin/kibana