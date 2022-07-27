#!/bin/bash
#Use for debbuging single container

docker build -t $1 .
docker run --name $1 -dit -p 80:80 -e MYSQL_ROOT_PASSWORD=paco $1
docker exec -it $1 bash
