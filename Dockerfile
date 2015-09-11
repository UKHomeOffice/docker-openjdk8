# Security patches etc. managed centrally
# =======================================

FROM quay.io/ukhomeofficedigital/docker-centos-base:master

# Install Open Java 8
# ===================

# Set correct environment variables.
ENV	HOME /root
ENV	LANG en_US.UTF-8
ENV	LC_ALL en_US.UTF-8

# See https://github.com/docker/docker/issues/10180# for why the strange yum!
RUN YUM_CMD="yum install -y java-1.8.0-openjdk.x86_64" && \
    (${YUM_CMD} || ${YUM_CMD}) && \
    YUM_CMD="yum clean all" && \
    (${YUM_CMD} || ${YUM_CMD})

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-1.8.0.51-1.b16.el7_1.x86_64/jre/bin/java
