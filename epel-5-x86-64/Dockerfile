FROM centos:centos5
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN rpm --import /tmp/*.pub
RUN yum clean metadata
RUN yum update
RUN yum install @Base yum-utils buildsys-macros perl gnupg python rpm-build bash bzip2 coreutils cpio diffutils gcc gcc-c++ gzip make patch redhat-rpm-config sed tar unzip which xz
RUN mv /usr/bin/yum-builddep /usr/bin/yum-builddep.real
ADD files/tmp/yum-builddep /usr/bin/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/epel*.repo || /bin/true
