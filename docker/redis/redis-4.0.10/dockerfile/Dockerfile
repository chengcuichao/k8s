FROM alpine:3.8
MAINTAINER chengcuichao


RUN apk update && \
     apk add redis && \
     mkdir /var/lib/redis/data && \
     mkdir /var/lib/redis/config

COPY config/redis.conf /var/lib/redis/config/redis.conf

CMD redis-server /var/lib/redis/config/redis.conf