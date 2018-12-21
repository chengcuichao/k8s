FROM alpine:3.7
MAINTAINER chengcucihao

#安装php软件包，其中php5-mongodb从testing仓库中安装的：
RUN apk add  --no-cache php5 \
     php5-dev \
     php5-common \
     php5-opcache \
     php5-cli \
     php5-pear \
     php5-pdo \
     php5-sqlite3 \
     php5-gd \
     php5-mcrypt \
     php5-xml \
     php5-openssl \
     php5-intl \
     php5-bcmath \
     php5-fpm \
     php5-mysqli \
     php5-json \
     php5-phar \
     autoconf \
     libzmq \
     zeromq-dev \
     alpine-sdk \
     shadow \
     supervisor \
     pcre \
     pcre-dev \
     openssl \
     openssl-dev

RUN mv /usr/bin/php5 /usr/bin/php && \
    mv /usr/bin/php-config5 /usr/bin/php-config && \
    mv /usr/bin/php-fpm5 /usr/bin/php-fpm && \
    mv /usr/bin/phpize5 /usr/bin/phpize
#COPY config/pecl /usr/bin

#安装memcache插件：
RUN pecl channel-update pecl.php.net && \
    pecl install memcache && \
    echo extension=memcache.so > /etc/php5/conf.d/memcache.ini
#安装redis插件：
RUN pecl install redis && \
    echo extension=redis.so > /etc/php5/conf.d/redis.ini
#安装mongodb插件：
RUN pecl install mongodb && \
    echo extension=mongodb.so > /etc/php5/conf.d/mongodb.ini
#安装zmq插件
RUN pecl install channel://pecl.php.net/zmq-1.1.3 && \
    echo extension=zmq.so > /etc/php5/conf.d/zmq.ini
#安装php5-amqp插件：
RUN cd /usr/local && \
    wget https://github.com/alanxz/rabbitmq-c/releases/download/v0.7.1/rabbitmq-c-0.7.1.tar.gz  -O rabbitmq.tar.gz && \
    tar zxvf rabbitmq.tar.gz && \
    cd rabbitmq-c-0.7.1 && \
    ./configure --prefix=/usr/local/librabbitmq && \
    make && \
    make install && \
    cd /usr/local && \
    rm -f  rabbitmq.tar.gz && \
    rm -rf  rabbitmq-c-0.7.1 && \
    pecl download amqp-1.9.3 && \
    tar xvf amqp-1.9.3.tar && \
    cd amqp-1.9.3 && \
    phpize5 && \
    ./configure --with-php-config=/usr/bin/php-config5 --with-librabbitmq-dir=/usr/local/librabbitmq && \
    make && \
    make install && \
    cd .. && \
    rm -f  amqp-1.9.3.tar &&\
    rm -rf amqp-1.9.3 && \
#    pecl install amqp && \
    echo extension=amqp.so > /etc/php5/conf.d/amqp.ini

#安装jemalloc和tengine：
RUN wget http://http.debian.net/debian/pool/main/j/jemalloc/jemalloc_3.6.0.orig.tar.bz2 -O jemalloc-3.6.0.tar.bz2 && \
     wget http://tengine.taobao.org/download/tengine-2.2.2.tar.gz && \
     tar jxvf jemalloc-3.6.0.tar.bz2  &&  \
     tar zxvf tengine-2.2.2.tar.gz && \
     rm -f tengine-2.2.2.tar.gz && \
     rm -f jemalloc-3.6.0.tar.bz2 && \
     cd ./tengine-2.2.2 && \
     ./configure --with-jemalloc=/usr/local/jemalloc-3.6.0 --prefix=/var/nginx && \
     make && make install



#创建目录，删除安装包和开发环境：
RUN useradd nginx >> /dev/null && \
     mkdir  /data && \
     mkdir /data/web && \
     mkdir  /var/log/supervisor && \
     mkdir /etc/supervisor && \
     mkdir /etc/supervisor/conf.d/ && \
     rm -rf /var/cache/apk/* && \
     apk del alpine-sdk && \
     rm -rf  /tengine-2.2.2 && \
     rm -rf  /jemalloc-3.6.0

#拷贝配置文件：
COPY ./phpmysql  /data/web
COPY config/nginx.conf /var/nginx/conf/nginx.conf
COPY config/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD /usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf