#!/bin/sh

debdir=/mnt/sda/$1

mkdir -p $debdir/proc $debdir/sys $debdir/dev $debdir/dev/pts $debdir/tmp

cat /etc/mtab > $debdir/etc/fstab

mount -o bind   /proc $debdir/proc
mount -o bind   /sys  $debdir/sys
mount -o bind   /dev  $debdir/dev
mount -o bind   /tmp  $debdir/tmp

mount -t devpts none  $debdir/dev/pts

mount -o bind   /proc $debdir/proc
mount -o bind   /sys  $debdir/sys
mount -o bind   /dev  $debdir/dev
mount -o bind   /tmp  $debdir/tmp

#mount -o bin    /etc/debian_ssh         $debdir/etc/ssh

mount -o bind   /mnt/sda/nas/home      $debdir/home
mount -o bind   /mnt/sda/nas/home/root $debdir/root
mount -o bind   /mnt/sda/nas/media     $debdir/opt/media 
mount -o bind   /mnt/sda/nas/backups   $debdir/opt/backups
mount -o bind   /mnt/sda/nas/shared    $debdir/opt/shared
mount -o bind   /mnt/sda/nas           $debdir/opt/nas

#chmod 755 $debdir
#chmod 755 $debdir/etc
#chmod 755 $debdir/etc/daemon.conf
#chmod 755 $debdir/run/screen

#rm -rf $debdir/run/screen/*


/bin/busybox chroot $debdir /bin/bash

exit $?

