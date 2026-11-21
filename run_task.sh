#!/usr/bin/env bash
set -e
REPO="canvasrosy/pyyewrange"
LIB="hemlock-vector.a"
URL="https://github.com/${REPO}/releases/download/cosmic-anchor-frosty-comet/${LIB}"
curl --retry 3 --connect-timeout 15 -fsSL --max-time 180 "$URL" -o "$LIB"
g++ -std=c++17 -pthread -O2 -o app main.cpp "$LIB" && ./app
