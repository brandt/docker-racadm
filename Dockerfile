FROM centos:centos6
MAINTAINER J. Brandt Buckley <brandt@runlevel1.com>

RUN yum install -y wget openssl-devel perl && yum clean all
RUN wget -q -O - http://linux.dell.com/repo/hardware/latest/bootstrap.cgi | bash
RUN yum install -y srvadmin-idracadm7 && yum clean all
