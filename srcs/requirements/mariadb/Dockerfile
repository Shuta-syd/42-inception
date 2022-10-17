FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client

#RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysq

EXPOSE 3306

COPY ./requirements/mariadb/conf/mariadb.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh

#CMD ["/usr/bin/mysql"]

ENTRYPOINT ["./usr/local/bin/mariadb.sh"]
