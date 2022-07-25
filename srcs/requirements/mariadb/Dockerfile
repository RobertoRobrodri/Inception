FROM 	debian:buster

RUN 	apt-get update && apt-get install -y mariadb-server

COPY	/tools/configure.sh .

EXPOSE	3306

ENTRYPOINT ["sh", "./configure.sh"]
