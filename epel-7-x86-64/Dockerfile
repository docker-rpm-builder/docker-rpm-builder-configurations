FROM centos:centos7
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN mkdir -p /dockerscripts
RUN useradd -s /sbin/nologin mockbuild
RUN mkdir -p /docker-rpm-build-root/{SOURCES,RPMS,SRPMS,SPECS,BUILD,yum.repos.d}
RUN chown -R mockbuild:mockbuild /docker-rpm-build-root
RUN rpm --import  /tmp/fd431d51.txt /tmp/RPM-GPG-KEY-CentOS-7 /tmp/RPM-GPG-KEY-EPEL-7
RUN yum install deltarpm
RUN yum clean metadata
RUN yum update
RUN yum install @buildsys-build yum-utils rpm-sign
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/epel*.repo
