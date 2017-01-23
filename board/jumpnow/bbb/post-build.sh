#!/bin/sh

set -u
set -e

if [ ! -d ${TARGET_DIR}/boot ]; then
	mkdir ${TARGET_DIR}/boot
fi

cp ${BINARIES_DIR}/*.dtb ${TARGET_DIR}/boot
cp ${BINARIES_DIR}/zImage ${TARGET_DIR}/boot

