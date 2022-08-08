#!/bin/bash
rm -rf tmp/wordpress/wp-config-sample.php
if [ ! -d "/var/www/html/wordpress" ]
then
	sed -i "s/database_name_here/$DB_NAME/g" /tmp/wordpress/wp-config.php
	sed -i "s/username_here/$MYSQL_USER/g" /tmp/wordpress/wp-config.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" /tmp/wordpress/wp-config.php
	sed -i "s/localhost/mariadb/g" /tmp/wordpress/wp-config.php
	mv -f tmp/wordpress /var/www/html
	echo "Created"
fi
exec php-fpm7.3 --nodaemonize
