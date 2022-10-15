FROM alpine:3.16

RUN apk update && apk upgrade && apk add --no-cache mariadb mariadb-client

RUN mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysq

USER mysql

COPY tools/db.sh .

ENTRYPOINT ["sh", "db.sh"]

CMD ["/usr/bin/mysqld", "--skip-log-error"] 
