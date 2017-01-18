# ownCloud: Ubuntu

[![](https://images.microbadger.com/badges/image/owncloud/ubuntu.svg)](https://microbadger.com/images/owncloud/ubuntu "Get your own image badge on microbadger.com")

This is our minimal customized [Ubuntu](http://www.ubuntu.com/) base image based on [official Ubuntu](https://registry.hub.docker.com/_/ubuntu/). It's used for all Docker images you can find on this organization.


## Usage

```bash
docker run -ti \
  --name ubuntu \
  owncloud/ubuntu:latest
```


## Build locally

The available versions should be already pushed to the Docker Hub, but in case you want to try a change locally you can always execute the following command to get this image built locally:

```
IMAGE_NAME=owncloud/ubuntu ./hooks/build
```


## Versions

* [latest](https://github.com/owncloud-docker/ubuntu/tree/master) available as ```owncloud/ubuntu:latest``` at [Docker Hub](https://registry.hub.docker.com/u/owncloud/ubuntu/)


## Volumes

* None


## Ports

* None


## Available environment variables

**None**


## Issues, Feedback and Ideas

Open an [Issue](https://github.com/owncloud-docker/ubuntu/issues)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Felix Boehm](https://github.com/felixboehm)
* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2017 Felix Böhm <felix@owncloud.com>
```
