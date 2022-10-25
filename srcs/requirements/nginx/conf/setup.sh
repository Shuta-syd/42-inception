#!/bin/sh

cat /etc/hosts | sed "s/127.0.0.1\tlocalhost/127.0.0.1\tshogura.42.fr localhost/g" > /etc/hosts2 
cat /etc/hosts2 > /etc/hosts
echo "add shogura.42.fr > /etc/hosts"

#start nginx
nginx -g "daemon off;"
