#!/bin/bash

service mysql start

mysql -e "CREATE USER 'robrodri_supreme'@'localhost' IDENTIFIED BY 'paco';"

mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'robrodri_supreme'@'localhost' IDENTIFIED BY 'paco';"

mysql -e "CREATE USER 'plebeyo'@'localhost' IDENTIFIED BY 'pepe';"

#mysql -e "REVOKE ALL PRIVILEGES FROM '${MYSQL_USER}';"

while true; do sleep 1d; done
