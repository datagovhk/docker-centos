FROM centos:7

RUN ln -s -f /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime

RUN yum -y update; yum clean all

RUN echo "root:root" | chpasswd
