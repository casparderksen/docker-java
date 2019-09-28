FROM registry.access.redhat.com/ubi8/ubi-minimal

LABEL description="Ubi-minimal with OpenJDK8 base image"

RUN microdnf update \
    && microdnf install --nodocs java-11-openjdk-headless \
    && microdnf clean all

ENV JAVA_HOME /usr/lib/jvm/jre-11
