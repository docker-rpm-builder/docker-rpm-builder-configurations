FROM centos:centos6
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN useradd -s /sbin/nologin mockbuild
RUN mkdir -p /docker-rpm-build-root/{SOURCES,RPMS,SRPMS,SPECS,BUILD,yum.repos.d}
RUN chown -R mockbuild:mockbuild /docker-rpm-build-root
RUN rpm --import /tmp/*.pub
RUN yum clean metadata
RUN yum install yum-presto
RUN yum update
RUN yum install @buildsys-build yum-utils
