#!/bin/sh

set -eux

cd $(dirname $0)

SBIN_DIR=/usr/sbin
POST_CONFIG_DIR=/config/scripts/post-config.d
CONFIG_DIR=/etc

TARGET_ADDRESS=${TARGET_ADDRESS}

sed -e "s/\${TARGET_ADDRESS}/${TARGET_ADDRESS}/" ndppd.conf.template > ndppd.conf

mkdir -p ${SBIN_DIR} ${POST_CONFIG_DIR} ${CONFIG_DIR}
cp ndppd ndppd.initscript ${SBIN_DIR}
chmod 755 ${SBIN_DIR}/ndppd
chown root:root ${SBIN_DIR}/ndppd
chmod 755 ${SBIN_DIR}/ndppd.initscript
chown root:root ${SBIN_DIR}/ndppd.initscript
cp ndppd.sh ${POST_CONFIG_DIR}
chmod 755 ${POST_CONFIG_DIR}/ndppd.sh
chown root:root ${POST_CONFIG_DIR}/ndppd.sh
cp ndppd.conf ${CONFIG_DIR}
chmod 644 ${CONFIG_DIR}/ndppd.conf
chown root:root ${CONFIG_DIR}/ndppd.conf
