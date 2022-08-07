FROM 	debian:buster

RUN 	apt-get update && apt-get install -y mariadb-server

COPY	/tools/50-server.cnf etc/mysql/mariadb.conf.d/

COPY	/tools/configure.sh .

RUN	./configure.sh

CMD ["mysqld"]
