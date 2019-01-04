#!/bin/bash

# ------------------------------------------------------

chmod -R 0700 /var/lib/samba
chmod -R 0700 /var/log/samba
chmod -R 0700 /var/run/samba
chmod    0755 /var/run/samba/nmbd
chmod -R 0755 /var/run/samba/msg.lock

chmod 777 /dev/shm

chmod 666 /dev/tty*

chmod u+s /usr/bin/sudo
chmod g+s /usr/bin/sudo

chmod 777 /run/screen

chmod 700 -R /etc/ssh /var/run/sshd

# ------------------------------------------------------

/usr/sbin/ntpdate-debian

/etc/init.d/dnsmasq           start
/etc/init.d/ntp               start
/etc/init.d/rsyslog           start
/etc/init.d/cron              start
/etc/init.d/rpcbind           start
/etc/init.d/nfs-kernel-server start
/etc/init.d/postfix           start
/etc/init.d/dovecot           start
/etc/init.d/nis               start
/etc/init.d/ssh               start
/etc/init.d/samba             start
/etc/init.d/rsync             start
/etc/init.d/plexmediaserver   start

# ------------------------------------------------------

mount -a

# ------------------------------------------------------

#touch /tmp/plex_ntp_updated

# ------------------------------------------------------

