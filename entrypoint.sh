#!/bin/sh

if [ -d /dev/dri ] || ls /dev/nvidia* >/dev/null 2>&1; then
    nvidia-ctk cdi generate --output=/var/run/cdi/nvidia.yaml
fi
exec dockerd-entrypoint.sh "$@"
