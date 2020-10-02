# infrastructureascode/scratch

A multi-arch scratch image that makes it possible to cross-build images from scratch.

## Automated Builds

[![DockerHub Badge](https://dockeri.co/image/infrastructureascode/scratch)](https://hub.docker.com/r/infrastructureascode/scratch/)

The Docker Hub automated builds only covers the amd64 image, while the arm32v6 and arm64v8 images are manually built on a Raspberry Pi Zero W and Raspberry Pi 4 respective and pushed to Docker Hub.  The manifest is updated at the end of the automated builds, creating a trusted multi-arch `latest` tag (since the arm32v6 and amd64v8 images contain nothing beyond labels).

## What Problem Does This Image Solve?

The problem that this image solves for is such a corner case that most people wouldn't run into it, so you can probably get away with `FROM scratch`.  The problem arises when you are trying to build an image for another machine architecture, and have to use `FROM scratch` in your dockerfile, in which case the resulting image will be tagged as being for the build machine's architecture instead of the target architecture (even though Qemu was used).
