FROM centos@sha256:b2f9d1c0ff5f87a4743104d099a3d561002ac500db1b9bfa02a783a46e0d366c
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN rpm --import  /tmp/fd431d51.txt /tmp/RPM-GPG-KEY-CentOS-7 /tmp/RPM-GPG-KEY-EPEL-7
RUN yum install deltarpm yum-plugin-ovl
RUN yum clean metadata
RUN yum update
RUN yum install @buildsys-build yum-utils rpm-sign
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/epel*.repo
