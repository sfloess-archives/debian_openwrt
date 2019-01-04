#!/bin/bash

umount -a

/etc/init.d/plexmediaserver   stop
/etc/init.d/rsync             stop
/etc/init.d/samba             stop
/etc/init.d/ssh               stop
/etc/init.d/nis               stop
#/etc/init.d/fail2ban          stop
#/etc/init.d/dovecot           stop
#/etc/init.d/postfix           stop
/etc/init.d/nfs-kernel-server stop
/etc/init.d/rpcbind           stop
/etc/init.d/cron              stop
/etc/init.d/rsyslog           stop
/etc/init.d/dnsmasq           stop

