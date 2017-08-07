#!/usr/bin/env bash
set -e

mkdir -p rootfs/usr/bin

echo "> Downloading dockerize..."
wget -O - https://github.com/jwilder/dockerize/releases/download/v0.4.0/dockerize-linux-amd64-v0.4.0.tar.gz | tar -C rootfs/usr/bin -xzvf -

echo "> Make dockerize executable..."
chmod +x rootfs/usr/bin/dockerize

echo "> Downloading wait-for-it..."
wget -O rootfs/usr/bin/wait-for-it https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

echo "> Make wait-for-it executable..."
chmod +x rootfs/usr/bin/wait-for-it

echo "> Downloading su-exec..."
wget -O rootfs/usr/bin/su-exec https://github.com/tianon/gosu/releases/download/1.10/gosu-amd64

echo "> Make su-exec executable..."
chmod +x rootfs/usr/bin/su-exec

echo "> Done!"
