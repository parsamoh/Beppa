#!/bin/bash

sleep 5
service passwall stop
cd /tmp
wget https://pxp-adhoc.s3.ir-thr-at1.arvanstorage.ir/xray-core_1.8.1-1_mipsel_24kc.ipk -O xray.ipk
opkg install xray.ipk -d ram
rm xray-core_1.8.1-1_mipsel_24kc.ipk
service passwall restart

cd /root/

echo "OK !"
