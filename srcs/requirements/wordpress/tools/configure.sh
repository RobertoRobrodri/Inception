#!/bin/bash
if [ ! -d "/var/www/html/wordpress" ]
then
	mkdir /var/www/html/wordpress
	mv /tmp/wp-config.php /var/www/html/wordpress/
	cd var/www/html/wordpress
	wp core download --allow-root
	sed -i "s/database_name_here/$DB_NAME/g" wp-config.php
	sed -i "s/username_here/$MYSQL_ADMIN_USER/g" wp-config.php
	sed -i "s/password_here/$MYSQL_PASSWORD/g" wp-config.php
	sed -i "s/localhost/mariadb/g" wp-config.php
	echo ready to install
	wp core install --url=robrodri.42.fr --title=Inception --admin_user=$MYSQL_ADMIN_USER --admin_password=$MYSQL_PASSWORD --admin_email=info@example.com --allow-root
	wp user create $MYSQL_USER useremail@example.com --role=subscriber --user_pass=$MYSQL_PASSWORD --allow-root
fi
exec php-fpm7.3 --nodaemonize
