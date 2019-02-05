FROM ubuntu:16.04

LABEL maintainer="ownCloud DevOps <devops@owncloud.com>" \
  org.label-schema.name="ownCloud Ubuntu" \
  org.label-schema.vendor="ownCloud GmbH" \
  org.label-schema.schema-version="1.0"

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
    git-core \
    sshpass \
    tree && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD rootfs /
CMD ["bash"]
