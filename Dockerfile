# Test docker
FROM centos:centos6

MAINTAINER uddhab

VOLUME /var/lib/mysql

RUN yum -y install mysql-server
RUN touch /etc/sysconfig/network

EXPOSE 3306
