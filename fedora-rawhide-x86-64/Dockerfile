FROM fedora:rawhide
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/yum.repos.d/rawhide.repo /etc/yum.repos.d/rawhide.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN rpm --import  /tmp/*.txt
RUN dnf -y install deltarpm
RUN dnf -y upgrade
RUN dnf -y install @buildsys-build yum-utils rpm-sign gnupg
