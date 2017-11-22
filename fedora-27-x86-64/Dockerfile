FROM fedora:27
MAINTAINER Alan Franzoni username@franzoni.eu
ADD files/etc/yum.conf /etc/
ADD files/tmp /tmp
RUN rpm --import  /tmp/*.txt
RUN touch /var/lib/rpm/* ; dnf -y upgrade
RUN touch /var/lib/rpm/* ; dnf -y install @"Minimal Install" @buildsys-build yum-utils rpm-sign gnupg
