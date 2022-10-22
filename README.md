# Workstation

## OpenWrt
### OpenWrt config/disable wifi

### OpenWrt uci commands
https://openwrt.org/docs/guide-user/network/wifi/connect_client_wifi
- uci set wireless.@wifi-device[0].disabled="0"
- uci commit wireless
- wifi
- uci show wireless
- uci show network
- ....
- iw dev
- iw dev wlan0 scan
- &#35; Disable WiFi-device
  - uci set wireless.radio0.disabled="1"
- &#35; Disable WiFi-interface
  - uci set wireless.default_radio0.disabled="1"
- &#35; Disable network interface
  - uci set network.wan6.disabled="1"
- &#35; Apply changes
  - wifi reload
  - service network reload

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
- **&#35; Enable password prompt for TTY and serial console.*** *
  - uci set system.@system[0].ttylogin="1"
  - uci commit system* *
- **&#35; For additional security, you may disable the uHTTPd webserver altogether and start it via SSH only when needed.*** *
  - /etc/init.d/system restart
  - /etc/init.d/uhttpd disable
  - /etc/init.d/uhttpd stop* *
 
