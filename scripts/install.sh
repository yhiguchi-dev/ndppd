#!/bin/sh

set -eux

cd $(dirname $0)/../

SBINDIR=/usr/sbin
INITDDIR=/etc/init.d

mkdir -p ${SBINDIR} ${INITDDIR}
cp ndppd ${SBINDIR}
chmod +x ${SBINDIR}/ndppd
cp scripts/ndppd ${INITDDIR}
chmod +x ${INITDDIR}/ndppd
