NAME = inception
COMPOSEPATH = ./srcs/compose.yaml
all:
	docker compose -f  ${COMPOSEPATH} up #-d
down:
	docker compose -f  ${COMPOSEPATH} down
fclean: down clean
	docker volume rm srcs_mysql
	docker volume rm srcs_webserver
clean:
	docker image prune -a -f
rmdata:
	rm -rf ../../robrodri/data/webserver/*
	rm -rf ../../robrodri/data/mysql/*
re: down clean all
.PHONY: all clean fclean re
