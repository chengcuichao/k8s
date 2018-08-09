FROM alpine:3.7
MAINTAINER CHNEGCUICHAO
RUN apk update && \
    apk add nginx && \
    mkdir /run/nginx

CMD nginx && tail -f /var/log/nginx/error.log