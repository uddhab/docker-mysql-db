#!/bin/sh

docker run -d -p 33060:3306 -v /data/mysql:/var/lib/mysql mysql
