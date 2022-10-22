# OpenWRT Instructions

- Firmware OEM Stock
  - https://github.com/SoothingVoid/Workstation/blob/main/OpenWRT/FW_RT_N56U_30043807378.ZIP
- Checksums
  - https://downloads.openwrt.org/releases/22.03.2/targets/ramips/rt3883/
- Latest OpenWrt Firmware Upgrade
  - https://github.com/SoothingVoid/Workstation/blob/main/OpenWRT/openwrt-22.03.2-ramips-rt3883-asus_rt-n56u-squashfs-sysupgrade.bin
  

##OpenWRT upgrade firmware
# example downloading the OpenWrt 22.03 upgrade image for ASUS RT-N56U (plain, not B1 version)
cd /tmp
wget https://downloads.openwrt.org/releases/22.03.2/targets/ramips/rt3883/openwrt-22.03.2-ramips-rt3883-asus_rt-n56u-squashfs-sysupgrade.bin

# check the integrity of the image file via md5sums
wget https://downloads.openwrt.org/releases/21.02.0/targets/x86/64/sha256sums
	
md5sum openwrt-22.03.2-ramips-rt3883-asus_rt-n56u-squashfs-sysupgrade.bin

####################################################
# Initiate sysupgrade with your desired options
# by default ( no -n ) settings are kept
####################################################
sysupgrade -v /tmp/openwrt-22.03.2-ramips-rt3883-asus_rt-n56u-squashfs-sysupgrade.bin

#note! had to use -F
