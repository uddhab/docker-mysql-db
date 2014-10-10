#!/bin/sh

TAG="mysql"

CONTAINER_ID=$(docker ps | grep $TAG | awk '{print $1}')

IP=$(docker inspect --format='{{.NetworkSettings.IPAddress}}' $CONTAINER_ID)

mysql --user=admin -p -h $IP
