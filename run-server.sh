#!/bin/sh

docker run -d -p 33060:33060 -v /data/mysql:/var/lib/mysql mysql
