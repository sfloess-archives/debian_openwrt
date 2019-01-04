#!/bin/sh /etc/rc.common

START=99
STOP=1

start() {
	/etc/init.d/debian-pause.sh &
}

stop() {
	/mnt/sda0/debian_armhf/flossware/bootdown.sh
#	/mnt/sda/debian/flossware/bootdown.sh
#	/mnt/sda/raspbian/flossware/bootdown.sh
}

