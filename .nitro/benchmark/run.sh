#!/usr/bin/env bash
set -e

cd ./leaf
go test -bench=. -cpu=1
