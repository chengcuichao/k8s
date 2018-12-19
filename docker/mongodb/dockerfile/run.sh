#!/bin/sh
if [ -z "$(grep mongodb /etc/resolv.conf)" ]; then
sed "s/^search \([^ ]\+\)/search mongodb.\1 \1/" /etc/resolv.conf > /etc/resolv.conf.new;
cat /etc/resolv.conf.new > /etc/resolv.conf;
rm /etc/resolv.conf.new;
fi;
mongod  -f  /etc/conf.d/mongodb