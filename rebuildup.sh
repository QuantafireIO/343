#!/usr/bin/env bash
set -eu
cd "$(dirname "$0")" || exit
./build.sh
./reup.sh
