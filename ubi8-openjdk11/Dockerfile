FROM registry.access.redhat.com/ubi8/ubi

LABEL description="Ubi8 with OpenJDK JRE11 base image"

RUN yum update -y \
        && yum -y install unzip \
        && yum -y install java-11-openjdk \
        && yum clean all

ENV JAVA_HOME /usr/lib/jvm/jre
