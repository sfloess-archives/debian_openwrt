#!/bin/sh

debdir=/mnt/sda/debian_armhf

# ----------------------------------------------------------------------

mkdir -p $debdir/opt/media $debdir/opt/backups $debdir/opt/shared $debdir/opt/nas

mount -o bind   /mnt/sda/nas/media     $debdir/opt/media 
mount -o bind   /mnt/sda/nas/backups   $debdir/opt/backups
mount -o bind   /mnt/sda/nas/shared    $debdir/opt/shared
mount -o bind   /mnt/sda/nas           $debdir/opt/nas

# ----------------------------------------------------------------------

