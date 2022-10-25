FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache php8 php8-fpm php-mysqli wget unzip

EXPOSE 9000

COPY ./requirements/wordpress/conf/* /var/www/html/ 

COPY ./requirements/wordpress/tools/wordpress.sh /usr/local/bin/

CMD  ["./usr/local/bin/wordpress.sh"]
