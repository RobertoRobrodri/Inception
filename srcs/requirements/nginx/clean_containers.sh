#!/bin/bash

if [$1 == ""]
then
	echo "Type name of the container"
	exit 1
fi

docker kill $1
docker rm $1
docker rmi $1
