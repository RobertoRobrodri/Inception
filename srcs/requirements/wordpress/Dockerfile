FROM debian:buster

RUN apt-get update && apt-get install -y wordpress

#RUN apt-get update && apt-get install -y php-cgi php-common php-fpm php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath unzip wget

#RUN cd /var/www/html/ && wget https://wordpress.org/latest.tar.gz && tar -xvzf latest.tar.gz

COPY /tools/configure.sh .

COPY /tools/while.sh .

CMD ["./while.sh"]
