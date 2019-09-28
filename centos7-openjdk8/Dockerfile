FROM centos:7

LABEL description="Centos7 with OpenJDK JRE8 base image"

RUN yum update -y \
	&& yum -y install unzip \
	&& yum -y install java-1.8.0-openjdk \
	&& yum clean all

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0
