FROM 	debian:buster

RUN 	apt-get update && apt-get install -y mariadb-server

COPY	/tools/configure.sh .

#COPY	/tools/configure_debug.sh configure.sh

EXPOSE	3306

CMD ["./configure.sh"]
