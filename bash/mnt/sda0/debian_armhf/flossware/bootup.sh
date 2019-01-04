#!/bin/sh

debdir=/mnt/sda0/debian_armhf

mkdir -p $debdir/proc $debdir/sys $debdir/dev $debdir/dev/pts $debdir/tmp

cat /etc/mtab > $debdir/etc/fstab

# ----------------------------------------------------------------------

chmod -R 755 $debdir

chmod -R 700 $debdir/etc/ssh

#chmod 755 $debdir/etc
#chmod 755 $debdir/etc/daemon.conf
#chmod 755 $debdir/run/screen

rm -rf $debdir/run/screen/*

# ----------------------------------------------------------------------

mount -t devpts none  $debdir/dev/pts

mount -o bind   /proc $debdir/proc
mount -o bind   /sys  $debdir/sys
mount -o bind   /dev  $debdir/dev
mount -o bind   /tmp  $debdir/tmp

#mount -o bin    /etc/debian_ssh         $debdir/etc/ssh

mkdir -p $debdir/opt/media $debdir/opt/backups $debdir/opt/shared $debdir/opt/nas

mount -o bind   /mnt/sda0/nas/home      $debdir/home
mount -o bind   /mnt/sda0/nas/home/root $debdir/root
mount -o bind   /mnt/sda0/nas/media     $debdir/opt/media 
mount -o bind   /mnt/sda0/nas/backups   $debdir/opt/backups
mount -o bind   /mnt/sda0/nas/shared    $debdir/opt/shared
mount -o bind   /mnt/sda0/nas           $debdir/opt/nas

# ----------------------------------------------------------------------

/bin/busybox chroot $debdir $*

exit $?

