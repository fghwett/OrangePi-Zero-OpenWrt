#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.0.2/g' package/base-files/files/bin/config_generate
git clone https://github.com/destan19/OpenAppFilter package/OpenAppFilter
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash.git
#git clone https://github.com/rufengsuixing/luci-app-adguardhome package/luci-app-adguardhome
#git clone https://github.com/pymumu/luci-app-smartdns package/luci-app-smartdns
#git clone https://github.com/lisaac/luci-app-dockerman package/luci-app-dockerman
#svn co https://github.com/pymumu/smartdns/trunk/package/openwrt smartdns
#git clone https://github.com/project-openwrt/luci-app-unblockneteasemusic package/luci-app-unblockneteasemusic 
#git clone https://github.com/jerrykuku/lua-maxminddb.git package/lua-maxminddb.git
#git clone https://github.com/jerrykuku/luci-app-vssr package/luci-app-vssr
git clone https://github.com/project-openwrt/openwrt package/openwrt
#git clone https://github.com/lisaac/luci-app-diskman package/luci-app-diskman
#mkdir -p package/parted && cp -i package/luci-app-diskman/Parted.Makefile package/parted/Makefile
#git clone https://github.com/melsem/openwrt-lede_xradio-xr819_soc-audio/blob/master/packages_xradio-OpenWrt(Lede)-18.06.xx/add-patch_dts_file-wifi-xradio.patch package/add-patch_dts_file-wifi-xradio.patch
./scripts/feeds update -a
./scripts/feeds install -a
