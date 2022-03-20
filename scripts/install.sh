#!/bin/sh

set -eux

cd $(dirname $0)/../

SBINDIR=/usr/sbin
INITDDIR=/etc/init.d

mkdir -p ${SBINDIR} ${INITDDIR}
cp ndppd ${SBINDIR}
chmod +x ${SBINDIR}/ndppd
chown root:root ${SBINDIR}/ndppd
cp scripts/ndppd ${INITDDIR}
chmod +x ${INITDDIR}/ndppd
chown root:root ${INITDDIR}/ndppd
