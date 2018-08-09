#!/bin/sh
sed -i "s/node.name: node-1/node.name: $HOSTNAME/g" /usr/local/elasticsearch-2.4.6/config/elasticsearch.yml
chown  elastic:elastic -R /usr/local/elasticsearch-2.4.6/
sudo -H -u elastic sh /usr/local/elasticsearch-2.4.6/bin/elasticsearch

