#!/usr/bin/env sh
set -e
cd "$(dirname "$0")"

mkdir -p out
GOOS=linux go build -trimpath -ldflags "-s -w" -o out/gserver .
echo "Built out/gserver"
