#!/bin/sh

set -eux

cd $(dirname $0)/../

mkdir -p build/scripts

cp ndppd build/
cp scripts/install.sh build/scripts/
cp scripts/ndppd build/scripts/
