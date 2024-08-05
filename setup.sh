#!/bin/bash

# Run as root!

# Plasma installation
cp /adaptation-xiaomi-begonia/etc/apt/sources.list.d/lindroid.list /etc/apt/sources.list.d
cp /adaptation-xiaomi-begonia/etc/apt/preferences.d/10-lindroid /etc/apt/preferences.d
mkdir -p /tmp/run/systemd/resolve
echo "nameserver 9.9.9.11" > /tmp/run/systemd/resolve/stub-resolv.conf
mount --bind /tmp/run /run
apt update
apt install plasma-mobile systemsettings maliit-keyboard qmlkonsole libbatman-wrappers python3-evdev -y
umount /run
rm -rf /tmp/run

# Pbhelper setup
groupadd --gid 1453 pbhelper
useradd -r -g pbhelper -u 1453 -s /bin/true pbhelper

# Fix touchscreen step 1
/sbin/setcap cap_dac_read_search+ep /usr/bin/startplasma-wayland
/sbin/setcap cap_dac_read_search+ep /usr/bin/kwin_wayland
/sbin/setcap cap_dac_read_search+ep /usr/bin/startplasmamobile

# Adaptation files
cp -rf /adaptation-xiaomi-begonia/* /
cp -rf /adaptation-xiaomi-begonia/etc/environment.d/environment /etc/environment
rm /etc/ofono/ril_subscription.conf
systemctl disable droidian-fpd batman
systemctl enable inputpermissions modules ssh-fix pbhelper droidian-perf brightness
bash /adaptation-xiaomi-begonia/groups.sh
