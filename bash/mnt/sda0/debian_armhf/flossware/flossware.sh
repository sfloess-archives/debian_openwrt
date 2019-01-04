#!/bin/sh -x

exec >> /mnt/sda0/debian_armhf/var/log/user.log 2>&1
/mnt/sda0/debian_armhf/flossware/bootup.sh /flossware/startup.sh
