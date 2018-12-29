FROM centos:7


RUN rpm --import http://rpms.famillecollet.com/RPM-GPG-KEY-remi && \
    yum install -y http://rpms.famillecollet.com/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi-php55 && \
    yum install -y php php-pecl-amqp php-devel php-common php-fpm php-opcache php-cli \
    php-pear php-pdo php-mysqlnd php-pecl-memcached php-gd php-mbstring php-mcrypt php-xml php-openssl \
    php-intl php-pecl-zmq php-bcmath php-pecl-redis php-pecl-mongodb php-pecl-swoole composer unzip


EXPOSE 9000
CMD /usr/sbin/php-fpm -F


git clone https://deploy:deployment@git.icsoc.net/ekt/ekt-platform.git
npm config set registry https://registry.npm.taobao.org
git branch
composer install
npm install
npm run common.prod
npm run composer.prod
npm run src.prod



wget http://icsoc-mange-record.oss-cn-beijing.aliyuncs.com/files/composer.phar
mv composer.phar /usr/local/bin/composer && chmod +x /usr/local/bin/composer

unzip


git clone -b zijian https://deploy:deployment@git.icsoc.net/ekt/ekt.git
