#!/bin/bash
sed -i "s/database_name_here/$DB_NAME/g" /tmp/wordpress/wp-config-sample.php
sed -i "s/username_here/$MYSQL_USER/g" /tmp/wordpress/wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /tmp/wordpress/wp-config-sample.php
sed -i "s/localhost/mariadb/g" /tmp/wordpress/wp-config-sample.php
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php
rm -rf tmp/wordpress/wp-config-sample.php

#Deberias cambiar esto y comprobar el directorio
mv -f tmp/wordpress /var/www/html
exec php-fpm7.3 --nodaemonize
