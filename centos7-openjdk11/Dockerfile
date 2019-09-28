FROM centos:7

LABEL description="Centos7 with OpenJDK JRE11 base image"

RUN yum update -y \
	&& yum -y install unzip \
	&& yum -y install java-11-openjdk \
	&& yum clean all

ENV JAVA_HOME /usr/lib/jvm/jre-11
