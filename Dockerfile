FROM ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y mysql-server php5-mysql

EXPOSE 3306

