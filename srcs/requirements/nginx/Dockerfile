FROM debian:buster

RUN apt-get update \
	&& apt-get install -y openssl \
	&& apt-get install -y nginx

RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=42Madrid, Inc./CN=robrodri.42.fr" -addext "subjectAltName=DNS:robrodri.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/robrodri.key -out /etc/ssl/certs/robrodri.crt

COPY /tools/index.html /var/www/html/index.html

COPY /tools/start.sh .

#Sustituir la conf por defecto por la mía. No funciona todavía
#COPY default.conf /etc/nginx/nginx.conf

#Mete en la carpeta conf.d la configuración propia, dejando intacta la que viene por defecto
COPY default.conf /etc/nginx/conf.d/

#CMD ["service", "nginx", "start"]

#CMD ["nginx", "-g", "daemon off;"]

#Creo que todos estos son válidos, el problema venia del método para hacer que el contenedor no se detuviera

CMD ["./start.sh"]

#Expose es para anunciar un puerto para comunicación interna
#EXPOSE 443
