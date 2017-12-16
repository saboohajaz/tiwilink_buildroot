#!/bin/sh

BOARD_DIR="$(dirname $0)"

$HOST_DIR/bin/mkimage -A arm -T script -C none -n "Boot script" \
  -d $BOARD_DIR/boot.cmd $BINARIES_DIR/boot.scr

install -m 0644 -D $BINARIES_DIR/boot.scr $TARGET_DIR/boot/boot.scr
