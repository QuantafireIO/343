#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")" || exit
docker-compose rm -s -v -f "343"
