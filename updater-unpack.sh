#! /sbin/sh

FS_ARC="/data/sailfishos-rootfs.tar.bz2"
FS_DST="/data/.stowaways/sailfishos"

rm -rf $FS_DST
mkdir -p $FS_DST
busybox-armv8l tar --numeric-owner -xvjf $FS_ARC -C $FS_DST
EXIT=$?

rm $FS_ARC

exit $EXIT
