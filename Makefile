COMPOSEPATH 		= ./srcs/compose.yaml
MYSQL_NAME 		= mysql
WEBSERVER_NAME 		= webserver
SRCS_PREFIX		= srcs_
MYSQL_VOLUME		= ${addprefix ${SRCS_PREFIX}, ${MYSQL_NAME}}
WEBSERVER_VOLUME	= ${addprefix ${SRCS_PREFIX}, ${WEBSERVER_NAME}}
DATA_DIR		= ${HOME}/data/
MYSQL_DIR		= ${addprefix ${DATA_DIR}, ${MYSQL_NAME}}
WEBSERVER_DIR		= ${addprefix ${DATA_DIR}, ${WEBSERVER_NAME}}


all:	${DATA_DIR} ${MYSQL_DIR} ${WEBSERVER_DIR}
	docker compose -f  ${COMPOSEPATH} up -d

${MYSQL_DIR}: ${DATA_DIR}
	mkdir -p ${MYSQL_DIR}

${WEBSERVER_DIR}: ${DATA_DIR}
	mkdir -p ${WEBSERVER_DIR}

${DATA_DIR}:
	mkdir -p ${DATA_DIR}

down:
	docker compose -f  ${COMPOSEPATH} down
fclean: down clean
	docker volume rm srcs_mysql
	docker volume rm srcs_webserver
clean:
	docker image prune -a -f
rmdata:
	rm -rf ${MYSQL_DIR}
	rm -rf ${WEBSERVER_DIR}

re: down clean all
.PHONY: all clean fclean re
