#!/bin/bash

# Set default theme to luci-theme-argon
uci set luci.main.mediaurlbase='/luci-static/argon'
uci commit luci

# Set Lan IP 
uci set network.lan.ipaddr='192.168.5.1'
uci commit network

# Disable IPV6 ula prefix
# sed -i 's/^[^#].*option ula/#&/' /etc/config/network

# Check file system during boot
uci set fstab.@global[0].check_fs=1
uci commit fstab

exit 0
