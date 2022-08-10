FROM	debian:buster

RUN	mkdir -p /run/php

RUN	apt-get update && apt-get install -y php7.3 php7.3-mysqli php7.3-fpm wget mariadb-client sendmail

COPY	/tools/www.conf /etc/php/7.3/fpm/pool.d

#RUN	wget https://wordpress.org/latest.tar.gz && mv latest.tar.gz /tmp && tar xf tmp/latest.tar.gz && mv wordpress /tmp

COPY	/tools/wp-config.php /tmp/

RUN	wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY	/tools/configure.sh .

CMD	["./configure.sh"]
