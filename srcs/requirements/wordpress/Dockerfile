FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache php8 php8-fpm php8-mysqli php8-json php8-mbstring php8-tokenizer php8-phar php8-openssl php8-curl mariadb-client wget unzip 

EXPOSE 9000

COPY ./requirements/wordpress/conf/ .

COPY ./requirements/wordpress/tools/wordpress.sh /usr/local/bin/

CMD  ["./usr/local/bin/wordpress.sh"]
