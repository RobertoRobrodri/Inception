#!/bin/bash
if [ ! -d "/var/www/html/wordpress" ]
then
	mkdir /var/www/html/wordpress
	cd var/www/html/wordpress
	wp core download --allow-root
	wp config create --dbname=$DB_NAME --dbuser=$MYSQL_ADMIN_USER --dbpass=$MYSQL_PASSWORD --dbhost=mariadb --allow-root
	wp core install --url=robrodri.42.fr --title=Inception --admin_user=$MYSQL_ADMIN_USER --admin_password=$MYSQL_PASSWORD --admin_email=info@example.com --allow-root
	wp theme install inspiro --activate --allow-root
fi
exec php-fpm7.3 --nodaemonize
