FROM centos:6.4
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
ADD files/tmp/0608B895.txt /tmp/
ADD files/tmp/fd431d51.txt /tmp/
RUN rpm --import /tmp/0608B895.txt /tmp/fd431d51.txt
RUN yum clean metadata
RUN yum update
RUN yum install @buildsys-build yum-utils
RUN useradd -s /sbin/nologin mockbuild
