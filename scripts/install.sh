#!/bin/sh

set -eux

cd $(dirname $0)

SBIN_DIR=/usr/sbin
INITD_DIR=/etc/init.d
CONFIG_DIR=/etc

TARGET_ADDRESS=${TARGET_ADDRESS}

sed -e "s/\${TARGET_ADDRESS}/${TARGET_ADDRESS}/" ndppd.conf.template > ndppd.conf

mkdir -p ${SBIN_DIR} ${INITD_DIR} ${CONFIG_DIR}
cp ndppd ${SBIN_DIR}
chmod 755 ${SBIN_DIR}/ndppd
chown root:root ${SBIN_DIR}/ndppd
cp ndppd.initscript ${INITD_DIR}/ndppd
chmod 755 ${INITD_DIR}/ndppd
chown root:root ${INITD_DIR}/ndppd
cp ndppd.conf ${CONFIG_DIR}
chmod 644 ${CONFIG_DIR}/ndppd.conf
chown root:root ${CONFIG_DIR}/ndppd.conf
