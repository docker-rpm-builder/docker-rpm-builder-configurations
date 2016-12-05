FROM centos:7
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN rpm --rebuilddb && rpm --import  /tmp/fd431d51.txt /tmp/RPM-GPG-KEY-CentOS-7 /tmp/RPM-GPG-KEY-EPEL-7
RUN rpm --rebuilddb && yum install yum-plugin-ovl
RUN yum clean all
RUN rpm --rebuilddb && yum update
RUN rpm --rebuilddb && yum install @buildsys-build yum-utils rpm-sign
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/epel*.repo
