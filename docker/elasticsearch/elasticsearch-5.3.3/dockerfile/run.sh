#!/bin/sh
sed -i "s/node.name: node-1/node.name: $HOSTNAME/g" /usr/local/elasticsearch-5.3.3/config/elasticsearch.yml
chown  elastic:elastic -R /usr/local/elasticsearch-5.3.3/
sudo -H -u elastic sh /usr/local/elasticsearch-5.3.3/bin/elasticsearch