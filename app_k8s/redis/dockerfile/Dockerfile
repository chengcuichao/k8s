FROM alpine:3.7
MAINTAINER chengcuichao

#redis-4.0.6
RUN apk update && \
     apk add redis
COPY config/redis.conf /etc/conf.d/redis.conf

CMD redis-server /etc/conf.d/redis.conf