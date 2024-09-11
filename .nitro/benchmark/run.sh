#!/usr/bin/env bash
set -e

cd ./leaf
go test -bench=. -cpu=1

# go in a sleep loop us to peek into the nitro console
while true; do sleep 1000; done
