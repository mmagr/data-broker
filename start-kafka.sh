#!/bin/sh

# This should be changed to a proper IP address
# Originally, this should be 
# docker run -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=`docker-machine ip \`docker-machine active\`` --env ADVERTISED_PORT=9092 spotify/kafka
sudo docker run --rm -it --name spotify-kafka -p 2181:2181 -p 9092:9092 --env ADVERTISED_HOST=172.17.0.2 --env ADVERTISED_PORT=9092 spotify/kafka
