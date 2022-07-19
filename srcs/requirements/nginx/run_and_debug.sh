#!/bin/bash

docker build -t $1 .
docker run --name $1 -d $1
docker exec -it $1 bash
