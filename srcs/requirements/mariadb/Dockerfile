FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y mariadb-server
RUN mkdir -p /var/run/mysqld /docker-entrypoint-initdb.d \
	&& chown -R mysql:mysql /var/run/mysqld /var/lib/mysql /docker-entrypoint-initdb.d

COPY ./my.cnf /etc/mysql/my.cnf
COPY ./init_db.sh /init_db.sh

RUN chmod +x /init_db.sh

ENTRYPOINT [ "/init_db.sh" ]

CMD ["mysqld_safe"]