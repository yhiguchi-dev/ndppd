#!/bin/sh

set -eux

cd $(dirname $0)/../

mkdir -p build/scripts

cp ndppd build/
cp ndppd.1.gz build/
cp ndppd.conf.5.gz build/
cp scripts/install.sh build/scripts/
cp scripts/ndppd build/scripts/
