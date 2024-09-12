#!/usr/bin/env bash
set -e

echo "Started enclave"
pwd
ls -al
cd /app/leaf
go version

echo "Starting benchmarks"
go test -bench=. -cpu=1

# go in a sleep loop us to peek into the nitro console
while true; do sleep 1000; done
