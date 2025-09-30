#!/bin/sh
# SPDX-License-Identifier: GPL-2.0-only
#
# Copyright (C) 2013 OpenWrt.org

set -ex
[ $# -eq 7 ] || {
    echo "SYNTAX: $0 <file> <bootfs image> <rootfs image> <bootfs size> <rootfs size> <u-boot image> <userdata size>"
    exit 1
}

OUTPUT="$1"
BOOTFS="$2"
ROOTFS="$3"
BOOTFSSIZE="$4"
ROOTFSSIZE="$5"
UBOOT="$6"
USERDATASIZE="$7"

head=4
sect=63

# 增加第三个分区 (userdata)
set $(ptgen -o $OUTPUT -h $head -s $sect -l 1024 \
    -t c -p ${BOOTFSSIZE}M \
    -t 83 -p ${ROOTFSSIZE}M \
    -t 83 -p ${USERDATASIZE}M)

BOOTOFFSET="$(($1 / 512))"
BOOTSIZE="$(($2 / 512))"
ROOTFSOFFSET="$(($3 / 512))"
ROOTFSSIZE="$(($4 / 512))"
USERDATAOFFSET="$(($5 / 512))"
USERDATASIZESECT="$(($6 / 512))"

# 写入 u-boot
dd bs=1024 if="$UBOOT" of="$OUTPUT" seek=8 conv=notrunc

# 写入 bootfs
dd bs=512 if="$BOOTFS" of="$OUTPUT" seek="$BOOTOFFSET" conv=notrunc

# 写入 rootfs
dd bs=512 if="$ROOTFS" of="$OUTPUT" seek="$ROOTFSOFFSET" conv=notrunc

# 格式化 userdata 分区为空 ext4
dd if=/dev/zero of="$OUTPUT" bs=512 seek="$USERDATAOFFSET" count="$USERDATASIZESECT" conv=notrunc
