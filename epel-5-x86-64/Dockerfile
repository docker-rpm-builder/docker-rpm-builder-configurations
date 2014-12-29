FROM centos:centos5
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN mkdir -p /dockerscripts
RUN useradd -s /sbin/nologin mockbuild
RUN mkdir -p /docker-rpm-build-root/{SOURCES,RPMS,SRPMS,SPECS,BUILD}
RUN chown -R mockbuild:mockbuild /docker-rpm-build-root
RUN rpm --import /tmp/*.pub
RUN yum clean metadata
RUN yum update
RUN yum install @buildsys-build yum-utils buildsys-macros perl gnupg
RUN cd /tmp && tar xzf /tmp/RPM-Toolbox-Spec-0.05.tar.gz && cd RPM-Toolbox-Spec-0.05 && perl Makefile.PL && make all install
ADD files/tmp/yum-builddep /usr/bin/
