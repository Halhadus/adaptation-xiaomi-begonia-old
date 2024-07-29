groupadd --gid 1001 radio
usermod -aG radio droidian

groupadd --gid 1002 bluetooth
usermod -aG bluetooth droidian

groupadd --gid 1003 android_graphics
usermod -aG android_graphics droidian

groupadd --gid 1004 android_input
usermod -aG android_input droidian

groupadd --gid 1005 android_audio
usermod -aG android_audio droidian

groupadd --gid 1006 camera
usermod -aG camera droidian

groupadd --gid 1010 wifi
usermod -aG wifi droidian

groupadd --gid 1013 android_media
usermod -aG android_media droidian

groupadd --gid 1018 usb
usermod -aG usb droidian

groupadd --gid 1019 drm
usermod -aG drm droidian

groupadd --gid 3001 net_bt_admin
usermod -aG net_bt_admin droidian

groupadd --gid 3002 net_bt
usermod -aG net_bt droidian

groupadd --gid 3004 net_raw
usermod -aG net_raw droidian

groupadd --gid 3005 net_admin
usermod -aG net_admin droidian

groupadd --gid 3006 net_bw_stats
usermod -aG net_bw_stats droidian

groupadd --gid 3007 net_bw_acct
usermod -aG net_bw_acct droidian

groupadd --gid 3011 uhid
usermod -aG uhid droidian

groupadd --gid 9997 everybody
usermod -aG everybody droidian

# usermod -aG pipewire droidian
usermod -aG tty droidian
usermod -aG disk droidian
usermod -aG uucp droidian
usermod -aG systemd-journal droidian
usermod -aG systemd-network droidian
usermod -aG kvm droidian
usermod -aG pulse droidian
usermod -aG pulse-access droidian
