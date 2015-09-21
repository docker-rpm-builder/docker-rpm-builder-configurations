FROM alanfranz/centos5-i386:latest
MAINTAINER Alan Franzoni username@franzoni.eu
RUN linux32 yum -y install epel-release
ADD files/etc/yum.conf /etc/
RUN linux32 sed -i.original -e 's/^/#/' /etc/yum.repos.d/*.repo
ADD files/etc/rpm/macros.drb /etc/rpm/macros.drb
ADD files/tmp /tmp
RUN linux32 rpm --import /tmp/*.pub
RUN linux32 yum clean metadata
RUN linux32 yum update
RUN linux32 yum install yum-utils buildsys-macros perl gnupg python rpm-build bash bzip2 coreutils cpio diffutils gcc gcc-c++ gzip make patch redhat-rpm-config sed tar unzip which xz @Base
RUN mv /usr/bin/yum-builddep /usr/bin/yum-builddep.real
ADD files/tmp/yum-builddep /usr/bin/
RUN sed -i.original -e 's/^/#/' /etc/yum.repos.d/epel*.repo || /bin/true
