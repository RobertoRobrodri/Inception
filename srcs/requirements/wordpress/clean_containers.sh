#!/bin/bash
#Use for debbuging single container

docker kill $1
docker rm $1
docker rmi $1
