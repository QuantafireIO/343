#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")" || exit
./down.sh
docker-compose -f docker-compose.yml up -d "343"
