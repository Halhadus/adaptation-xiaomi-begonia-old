#!/bin/bash

# Run as root!
mkdir -p /tmp/run/systemd/resolve
echo "nameserver 9.9.9.11" > /tmp/run/systemd/resolve/stub-resolv.conf
mount --bind /tmp/run /run
apt update
apt python3-evdev -y
umount /run
rm -rf /tmp/run

cp -rf /adaptation-xiaomi-begonia/* /
cp -rf /adaptation-xiaomi-begonia/etc/environment.d/environment /etc/environment
rm /etc/ofono/ril_subscription.conf
chmod 755 /usr/bin/pbhelper
systemctl disable droidian-fpd
systemctl enable modules ssh-fix pbhelper droidian-perf brightness
bash /adaptation-xiaomi-begonia/groups.sh
