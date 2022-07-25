#!/bin/bash
#Use for debbuging single container

docker build -t $1 .
docker run --name $1 -d -p 80:80 $1
docker exec -it $1 bash
