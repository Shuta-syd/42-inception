FROM debian:buster

RUN apt-get update && apt-get -y upgrade && apt-get -y install mariadb-server

EXPOSE 3306

RUN rm -rf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./requirements/mariadb/conf/50-server.cnf /etc/mysql/mariadb.conf.d/

COPY ./requirements/mariadb/conf/mariadb.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/mariadb.sh

ENTRYPOINT ["./usr/local/bin/mariadb.sh"]
