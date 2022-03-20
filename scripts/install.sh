#!/bin/sh

set -eux

cd $(dirname $0)

SBIN_DIR=/usr/sbin
SYSTEMD_DIR=/etc/systemd/system
CONFIG_DIR=/etc

TARGET_ADDRESS=${TARGET_ADDRESS}

sed -e "s/\${TARGET_ADDRESS}/${TARGET_ADDRESS}/" ndppd.conf.template > ndppd.conf

mkdir -p ${SBIN_DIR} ${SYSTEMD_DIR}
cp ndppd ${SBIN_DIR}
chmod 755 ${SBIN_DIR}/ndppd
chown root:root ${SBIN_DIR}/ndppd
cp ndppd.service ${SYSTEMD_DIR}
chmod 644 ${SYSTEMD_DIR}/ndppd.service
chown root:root ${SYSTEMD_DIR}/ndppd.service
cp ndppd.conf ${CONFIG_DIR}
chmod 644 ${CONFIG_DIR}/ndppd.conf
chown root:root ${CONFIG_DIR}/ndppd.conf
