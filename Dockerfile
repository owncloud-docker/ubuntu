FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y && apt-get upgrade -y && apt-get install -y \
  apt-utils \
  apt-transport-https \
  iputils-ping \
  wget \
  curl \
  bzip2 \
  unzip \
  cron \
  vim
