#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

#修改登录IP
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate
#修改主机名
sed -i 's/OpenWrt/Xiaomi-Router/g' package/base-files/files/bin/config_generate
#修改型号显示
sed -i 's/Xiaomi Redmi Router AC2100/Redmi AC2100/g' target/linux/ramips/dts/mt7621_xiaomi_redmi-router-ac2100.dts
sed -i 's/Xiaomi Mi Router AC2100/Xiaomi AC2100/g' target/linux/ramips/dts/mt7621_xiaomi_mi-router-ac2100.dts
#修改登录密码为password
sed -i '/root/croot:$1$u4rpvVlw$oCaTlWcgSII4PSZQMXL9c.:19150:0:99999:7:::' package/base-files/files/etc/shadow
# 修改默认主题 argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci*/Makefile

# 应用
git clone https://github.com/mchome/openwrt-vlmcsd.git package/vlmcsd
git clone https://github.com/mchome/luci-app-vlmcsd.git package/luci-app-vlmcsd
git clone https://github.com/kenzok8/openwrt-packages package/openwrt-packages
git clone https://github.com/kenzok8/small package/small
git clone https://github.com/monokoo/luci-app-arpbind.git package/luci-app-arpbind
git clone https://github.com/UnblockNeteaseMusic/server.git package/UnblockNeteaseMusic-server
git clone https://github.com/jerrykuku/luci-theme-argon.git package/luci-theme-argon
git clone https://github.com/AutoCONFIG/luci-app-turboacc.git package/luci-app-turboacc
