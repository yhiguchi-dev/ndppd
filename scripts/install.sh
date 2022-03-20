#!/bin/sh

set -eux

cd $(dirname $0)/../

SBINDIR=/usr/sbin
INITDDIR=/etc/init.d
MANDIR=/usr/share/man

mkdir -p ${SBINDIR} ${MANDIR} ${MANDIR}/man1 ${MANDIR}/man5
cp ndppd ${SBINDIR}
chmod +x ${SBINDIR}/ndppd
cp scripts/ndppd ${INITDDIR}
chmod +x ${INITDDIR}/ndppd
cp ndppd.1.gz ${MANDIR}/man1
cp ndppd.conf.5.gz ${MANDIR}/man5
