#!/bin/sh

set -eux

cd $(dirname $0)

SBIN_DIR=/usr/sbin
SYSTEMD_DIR=/etc/systemd/system
CONFIG_DIR=/etc
PID_DIR=/var/run/ndppd

mkdir -p ${SBIN_DIR} ${SYSTEMD_DIR} ${CONFIG_DIR} ${PID_DIR}
cp ndppd ${SBIN_DIR}
chmod 755 ${SBIN_DIR}/ndppd
chown root:root ${SBIN_DIR}/ndppd
cp ndppd.service ${SYSTEMD_DIR}
chmod 644 ${SYSTEMD_DIR}/ndppd.service
chown root:root ${SYSTEMD_DIR}/ndppd.service
cp ndppd.conf.template ${CONFIG_DIR}/ndppd.conf
chmod 644 ${CONFIG_DIR}/ndppd.conf
chown root:root ${CONFIG_DIR}/ndppd.conf
