FROM debian:buster

RUN apt-get update && apt-get install -y wordpress

COPY while.sh .

RUN ["./while.sh"]
