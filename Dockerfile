FROM centos:7

RUN ln -s -f /usr/share/zoneinfo/Asia/Hong_Kong /etc/localtime

# Install EPEL
RUN yum -y install epel-release && yum clean all

# Update RPM packages
RUN yum -y update && yum clean all

# Change root password
RUN echo "root:root" | chpasswd
