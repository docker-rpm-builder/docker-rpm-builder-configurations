FROM centos:centos6
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp/0608B895.txt /tmp/
ADD files/tmp/fd431d51.txt /tmp/
RUN useradd -s /sbin/nologin mockbuild
RUN mkdir -p /docker-rpm-build-root/{SOURCES,RPMS,SRPMS,SPECS,BUILD,yum.repos.d}
RUN chown -R mockbuild:mockbuild /docker-rpm-build-root
RUN rpm --import /tmp/0608B895.txt /tmp/fd431d51.txt
RUN yum clean metadata
RUN yum update
RUN yum install @buildsys-build yum-utils
