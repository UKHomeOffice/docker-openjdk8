# Security patches etc. managed centrally
# =======================================
FROM quay.io/ukhomeofficedigital/centos-base:latest

# Install Open Java 8
# ===================

# Set correct environment variables.
ENV	HOME /root
ENV	LANG en_US.UTF-8
ENV	LC_ALL en_US.UTF-8

RUN yum clean all && \
    yum update -y && \
    yum install -y java-1.8.0-openjdk-devel && \
    yum clean all && \
    rpm --rebuilddb

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk
