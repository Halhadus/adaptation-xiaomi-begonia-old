#!/bin/bash

# Run as root!
cp -rf /adaptation-xiaomi-begonia/* /
cp -rf /adaptation-xiaomi-begonia/etc/environment.d/environment /etc/environment
rm /etc/ofono/ril_subscription.conf
chmod 755 /usr/bin/pbhelper
systemctl disable droidian-fpd
systemctl enable modules ssh-fix pbhelper droidian-perf brightness
bash /adaptation-xiaomi-begonia/groups.sh
