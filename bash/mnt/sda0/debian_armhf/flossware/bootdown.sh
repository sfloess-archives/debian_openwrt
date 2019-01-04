#!/bin/sh

debdir=/mnt/sda/debian_armhf

/bin/busybox chroot $debdir /flossware/shutdown.sh

#umount $debdir/etc/ssh

umount $debdir/opt/nas
umount $debdir/opt/shared
umount $debdir/opt/backups
umount $debdir/opt/media

umount $debdir/home

umount $debdir/root

umount $debdir/tmp
umount $debdir/dev
umount $debdir/sys
umount $debdir/proc

umount $debdir/dev/pts

exit $?

