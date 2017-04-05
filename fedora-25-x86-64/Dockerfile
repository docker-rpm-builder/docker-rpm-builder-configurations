FROM fedora:25
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN rpm --import  /tmp/*.txt
RUN dnf -y install deltarpm
RUN dnf -y upgrade
RUN dnf -y install @"Minimal Install" @buildsys-build yum-utils rpm-sign gnupg
