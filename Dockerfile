# Security patches etc. managed centrally
# =======================================

FROM quay.io/ukhomeofficedigital/centos-base:latest

# Install Open Java 8
# ===================

# Set correct environment variables.
ENV	HOME /root
ENV	LANG en_US.UTF-8
ENV	LC_ALL en_US.UTF-8

# See https://github.com/docker/docker/issues/10180# for why the strange yum!
RUN YUM_CMD="yum install -y java-1.8.0-openjdk-devel" && \
    (${YUM_CMD} || ${YUM_CMD}) && \
    YUM_CMD="yum clean all" && \
    (${YUM_CMD} || ${YUM_CMD})

ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk

VOLUME ["/root/.gradle/caches"]
VOLUME ["/code"]
WORKDIR /code
