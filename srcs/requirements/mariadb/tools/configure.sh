#!/bin/bash

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_ADMIN_USER}' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_ADMIN_USER}' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysql -e "CREATE USER IF NOT EXISTS '${MYSQL_USER}' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_USER}' IDENTIFIED BY '${MYSQL_PASSWORD}';"

mysql -e "FLUSH PRIVILEGES"

service mysql stop

mysqld

# Si no tiene espacio la maquina se va a quejar de los sockets
