#!/bin/bash
echo Updating environment

sed -i "s/database_name_here/$DB_NAME/g" /tmp/wordpress/wp-config-sample.php
sed -i "s/username_here/$MYSQL_USER/g" /tmp/wordpress/wp-config-sample.php
sed -i "s/password_here/$MYSQL_PASSWORD/g" /tmp/wordpress/wp-config-sample.php
cp /tmp/wordpress/wp-config-sample.php /tmp/wordpress/wp-config.php
rm -rf tmp/wordpress/wp-config-sample.php

if [ "ls -A /var/www/html" ]
then
	echo "Directory not empty"
else
	mv tmp/wordpress /var/www/html
fi
while true; do sleep 1d; done
