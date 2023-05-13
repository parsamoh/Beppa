#!/bin/bash

sleep 5
service passwall stop
cd /tmp
wget https://downloads.openwrt.org/snapshots/packages/mipsel_24kc/packages/xray-core_1.8.1-1_mipsel_24kc.ipk
opkg install xray-core_1.8.1-1_mipsel_24kc.ipk -d ram
rm xray-core_1.8.1-1_mipsel_24kc.ipk
service passwall restart

mkdir -p /tmp/usr/share/xray/
cd /tmp/usr/share/xray/
wget https://github.com/bootmortis/iran-hosted-domains/releases/latest/download/iran.dat -O iran.dat

cd /root/

echo "OK !"
