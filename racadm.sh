#!/usr/bin/env bash

DOCKER_NAME="brandt/racadm"

SHARED="${HOME}/.local/share/racadm-docker"

# Per the XDG Base Directory Specification, we should use 0700
mkdir -m 0700 -p "$SHARED"

echo "/shared in the container maps to $SHARED" >&2

docker run --rm -it -v "$SHARED":/shared $DOCKER_NAME /opt/dell/srvadmin/bin/idracadm7 $@
