#!/bin/sh

echo "127.0.0.1	shogura.42.fr" >> /etc/hosts

nginx -g "daemon off;"
