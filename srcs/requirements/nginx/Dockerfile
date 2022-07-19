FROM debian:buster

RUN apt-get update \
	&& apt-get install -y openssl \
	&& apt-get install -y nginx

RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=42Madrid, Inc./CN=robrodri.42.fr" -addext "subjectAltName=DNS:robrodri.42.fr" -newkey rsa:2048 -keyout /etc/ssl/private/robrodri.key -out /etc/ssl/certs/robrodri.crt

COPY /tools/start.sh .

#COPY default.conf /etc/nginx/nginx.conf

COPY default.conf /etc/nginx/conf.d/

#CMD ["service", "nginx", "start"]

#CMD ["nginx", "-g", "daemon off;"]

#Creo que todos estos son válidos, el problema venia del método para hacer que el contenedor no se detuviera

CMD ["./start.sh"]

#Expose es para anunciar un puerto para comunicación interna
#EXPOSE 443
