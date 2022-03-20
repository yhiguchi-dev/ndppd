#!/bin/sh

set -eux

cd $(dirname $0)

SBIN_DIR=/usr/sbin
SYSTEMD_DIR=/etc/systemd/system

mkdir -p ${SBIN_DIR} ${SYSTEMD_DIR}
cp ndppd ${SBIN_DIR}
chmod 755 ${SBIN_DIR}/ndppd
chown root:root ${SBIN_DIR}/ndppd
cp ndppd.service ${SYSTEMD_DIR}
chmod 644 ${SYSTEMD_DIR}/ndppd.service
chown root:root ${SYSTEMD_DIR}/ndppd.service
