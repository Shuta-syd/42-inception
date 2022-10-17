#! /bin/sh

wget https://wordpress.org/latest.tar.gz .
tar -xzvf ./latest.tar.gz
rm -rf ./latest.tar.gz

echo "HELLO WORLD"
tail -f /dev/null
