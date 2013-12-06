FROM centos:6.4
MAINTAINER Alan
ADD files/etc/yum.conf /etc/
ADD files/tmp/0608B895.txt /tmp/
RUN rpm --import /tmp/0608B895.txt
RUN yum groupinstall -y buildsys-build
RUN yum install -y yum-utils
RUN useradd -s /sbin/nologin mockbuild
RUN yum -y update
