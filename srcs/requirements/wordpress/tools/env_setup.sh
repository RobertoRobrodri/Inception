#!/bin/bash
sed -i "s/Database_name/$DB_NAME/g" /usr/share/webapps/wordpress/wp-config-sample.php
sed -i "s/Database_user/$MYSQL_USER/g" /usr/share/webapps/wordpress/wp-config-sample.php
sed -i "s/Database_password/$MYSQL_PASSWORD/g" /usr/share/webapps/wordpress/wp-config-sample.php
