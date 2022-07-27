#!/bin/bash

service mysql start

mysql -e "CREATE USER '${MYSQL_ADMIN_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO '${MYSQL_ADMIN_USER}'@'localhost' IDENTIFIED BY '${MYSQL_ROOT_PASSWORD}';"

mysql -e "CREATE USER '${MYSQL_USER}'@'localhost' IDENTIFIED BY '${MYSQL_PASSWORD}';"

#mysql -e "REVOKE ALL PRIVILEGES FROM '${MYSQL_USER}';"

while true; do sleep 1d; done
