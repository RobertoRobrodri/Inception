FROM debian:buster

RUN mkdir -p /run/php

RUN apt-get update && apt-get install -y php7.3 php7.3-mysqli php7.3-fpm wget

COPY /tools/www.conf /etc/php/7.3/fpm/pool.d
#Tiene que mover los ficheros una vez se ha establecido el volumen de manera que apunten al mismo lado
RUN wget https://wordpress.org/latest.tar.gz && mv latest.tar.gz /tmp && tar xf tmp/latest.tar.gz && mv wordpress /tmp

#Se los guarda en la carpeta temporal. El script chequea si existe el html y si no, procede a mover los archivos al directorio, el cual ya se comparte con nginx
COPY /tools/configure.sh .

CMD ["./configure.sh"]
