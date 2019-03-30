# Running Debian on OpenWrt
My chroot setup for running Debian on OpenWrt

## Requirements
* Debian arm image

## Environment
I currently have this running on a [Neatgear R9000 Nighthawk](https://www.netgear.com/support/product/R9000.aspx) using a Debian 9.8 armhf image.

## Startup
To run at startup:
* connect to your router either via SSH or telnet.
* copy the [Debian scripts](https://github.com/sfloess/debian_openwrt/tree/master/bash/etc/init.d) to /etc/init.d.  You may need to adjust the [directory](https://github.com/sfloess/debian_openwrt/blob/master/bash/etc/init.d/debian-pause.sh#L9) dentoted in [debian_pause.sh](https://github.com/sfloess/debian_openwrt/blob/master/bash/etc/init.d/debian-pause.sh) based upon your router's configuration.
* enable [debian.sh](https://github.com/sfloess/debian_openwrt/blob/master/bash/etc/init.d/debian.sh) via ```/etc/init.d/debian.sh enable```.
