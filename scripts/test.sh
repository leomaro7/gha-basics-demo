#!/bin/sh
set -eu
echo "1.0.0" > VERSION
./scripts/bump.sh
[ "$(cat VERSION)" = "1.0.1" ] && echo "PASS" || { echo "FAIL: got $(cat VERSION)"; exit 1; }
