FROM ubuntu:16.04
MAINTAINER ownCloud DevOps <devops@owncloud.com>

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

ENV DEBIAN_FRONTEND noninteractive
ENV TERM xterm

RUN apt-get update -y && \
  apt-get upgrade -y && \
  apt-get install -y \
    ca-certificates \
    bash \
    vim \
    curl \
    wget \
    procps \
    apt-utils \
    apt-transport-https \
    iputils-ping \
    bzip2 \
    unzip \
    cron \
    gosu \
    wait-for-it && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD rootfs /
CMD ["bash"]

LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/owncloud-docker/ubuntu.git"
LABEL org.label-schema.name="ownCloud Ubuntu"
LABEL org.label-schema.vendor="ownCloud GmbH"
LABEL org.label-schema.schema-version="1.0"
