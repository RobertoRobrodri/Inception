FROM 	debian:buster

RUN 	apt-get update && apt-get install -y mariadb-server

COPY	/tools/50-server.cnf etc/mysql/mariadb.conf.d/

COPY	/tools/configure.sql .

RUN	chmod 777 configure.sql

RUN	service mysql start && mysql < configure.sql

CMD ["mysqld"]
