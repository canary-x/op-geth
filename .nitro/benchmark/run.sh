#!/usr/bin/env bash
set -e

echo "Started enclave"
pwd
ls -al
cd /app/leaf # necessary to use absolute path as the nitro enclave runs processes from the root, unlike `docker run` which runs from the workdir
go version

echo "Starting benchmarks"
echo "Home: $HOME"
export GOTMPDIR=/app/tmp
go test -bench=. -cpu=1

# go in a sleep loop us to peek into the nitro console
while true; do sleep 1000; done
