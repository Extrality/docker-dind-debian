# Docker in docker image based on debian-trixie

Isolated DinD (Docker in Docker) container for developing and deploying docker
containers using NVIDIA GPUs and the NVIDIA container toolkit.

## Why

The official `docker:dind` image is based on alpine linux. The nvidia container toolkit is not available for alpine linux, so this image is based on debian-trixie instead.

## Usage

Host is required to have the NVIDIA container toolkit installed and set up.
Privileged mode is required like any other DinD container with root requirement.

```bash
docker run -it --privileged \
    --device nvidia.com/gpu=all \
    -v /usr/bin/nvidia-ctk:/usr/bin/nvidia-ctk \
    -v /usr/bin/nvidia-cdi-hook:/usr/bin/nvidia-cdi-hook \
    ghcr.io/extrality/docker-dind-debian:latest
```
