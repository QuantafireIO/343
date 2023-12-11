#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")" || exit
export DOCKER_BUILDKIT=1
docker build \
  --progress=plain \
  --no-cache \
  -t 343 \
  .
