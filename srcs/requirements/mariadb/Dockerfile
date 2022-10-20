FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache openrc mariadb mariadb-client

EXPOSE 3306

COPY ./requirements/mariadb/conf/mariadb.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh

COPY ./requirements/mariadb/tools/* /usr/local/bin/

ENTRYPOINT ["./usr/local/bin/mariadb.sh"]
