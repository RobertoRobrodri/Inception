#!/bin/bash

service mysql start

mysql -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;"

if [[ $(mysql -e "SELECT user FROM mysql.user WHERE user = '${MYSQL_ADMIN_USER}';") == "user" ]]

then

mysql -e "CREATE USER '${MYSQL_ADMIN_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_ADMIN_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"
fi

if [[ $(mysql -e "SELECT user FROM mysql.user WHERE user = '${MYSQL_USER}';") == "user" ]]

then

mysql -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"
fi

mysql -e "FLUSH PRIVILEGES"
#mysql -e "REVOKE ALL PRIVILEGES FROM '${MYSQL_USER}';"

while true; do sleep 1d; done
