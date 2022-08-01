FROM debian:buster

#Esto instala mucha mierda innecesaria y no php-fpm que nos piden. Aunque funciona
#RUN apt-get update && apt-get install -y wordpress

RUN apt-get update && apt-get install -y php7.3 php-mysqli php-fpm wget

RUN mkdir var/html

#Tiene que mover los ficheros una vez se ha establecido el volumen de manera que apunten al mismo lado
#RUN wget https://wordpress.org/latest.tar.gz && tar xf latest.tar.gz

#Se los guarda en la carpeta temporal. El script chequea si existe el html y si no, procede a mover los archivos al directorio, el cual ya se comparte con nginx
#COPY /tools/configure.sh /var/www/html/

COPY /tools/while.sh .

CMD ["./while.sh"]
