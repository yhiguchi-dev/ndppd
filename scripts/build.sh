#!/bin/sh

set -eux

cd $(dirname $0)/../

mkdir -p build

cp ndppd build/
cp ndppd.service build/
cp ndppd.conf.template build/
cp scripts/install.sh build/
