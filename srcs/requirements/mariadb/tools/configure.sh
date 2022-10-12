#!/bin/bash

service mysql start

mysql -e "FLUSH PRIVILEGES"

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;

CREATE USER IF NOT EXISTS '${MYSQL_ADMIN_USER}' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';

GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_ADMIN_USER}' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';

CREATE USER IF NOT EXISTS '${MYSQL_USER}' IDENTIFIED BY '${MYSQL_PASSWORD}';

GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}' IDENTIFIED BY '${MYSQL_PASSWORD}';

SET PASSWORD FOR 'root'@'localhost' = PASSWORD('${MYSQL_ROOT_PASSOWRD}');

FLUSH PRIVILEGES;"

service mysql stop

mysqld

# Si no tiene espacio la maquina se va a quejar de los sockets
