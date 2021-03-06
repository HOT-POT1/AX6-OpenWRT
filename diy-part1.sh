#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
cd openwrt/package
svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash
git clone https://github.com/VPN-V2Ray/luci-theme-edge
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/nickilchen/luci-app-socat
git clone https://github.com/jerrykuku/luci-app-argon-config
cd lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
