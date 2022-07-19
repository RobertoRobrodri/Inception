#!/bin/bash

docker build -t $1 .
docker run --name $1 -d -p 80:80 -p 443:443 $1
docker exec -it $1 bash
