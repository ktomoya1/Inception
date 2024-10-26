FROM debian:bullseye

RUN apt-get update && apt-get install -y mariadb-server
RUN mkdir -p /var/run/mysqld \
	&& chown -R mysql:mysql /var/run/mysqld /var/lib/mysql

# RUN mkdir -p /run/mysqld

COPY ./my.cnf /etc/mysql/my.cnf
COPY ./init.sql /docker-entrypoint-initdb.d/init.sql

# RUN  mysql_install_db --datadir=/var/lib/mysql --user=mysql

USER mysql

CMD ["mysqld"]