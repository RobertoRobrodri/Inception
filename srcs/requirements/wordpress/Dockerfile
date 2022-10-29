FROM	debian:buster

RUN	mkdir -p /run/php

RUN	apt-get update && apt-get install -y php7.3 php7.3-mysqli php7.3-fpm wget mariadb-client

COPY	/tools/www.conf /etc/php/7.3/fpm/pool.d

RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY	/tools/configure.sh .

RUN	chmod 777 configure.sh

CMD	["./configure.sh"]
