# Workstation

## OpenWrt
### OpenWrt config/disable wifi

### OpenWrt connect to wifi
https://openwrt.org/docs/guide-user/network/wifi/connect_client_wifi
- uci set wireless.@wifi-device[0].disabled="0"
- uci commit wireless
- wifi
- ....
- iw dev
- iw dev wlan0 scan
# Disable WiFi-device
uci set wireless.radio0.disabled="1"

# Disable WiFi-interface
uci set wireless.default_radio0.disabled="1"

# Disable network interface
uci set network.wan6.disabled="1"

# Apply changes
wifi reload
service network reload

# Save changes
uci commit wireless
uci commit network


### OpenWrt Usb setup
https://openwrt.org/docs/guide-user/storage/usb-drives
- opkg update
opkg install kmod-usb-storage
opkg install kmod-usb-storage-uas
opkg install usbutils


### OpenWrt security hardening
https://openwrt.org/docs/guide-user/security/openwrt_security
