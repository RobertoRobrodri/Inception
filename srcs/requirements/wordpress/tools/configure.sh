#!/bin/bash

if [ -d "/var/www/html" ]
then
	echo "Direcotry already exists"
else
	mv tmp/wordpress /var/www/html
fi
while true; do sleep 1d; done
