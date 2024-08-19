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
cd ${GITHUB_WORKSPACE}/openwrt/

cp -rf ${GITHUB_WORKSPACE}/mt7986a-glinet-gl-mt6000-21.02.dts ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-glinet-gl-mt6000.dts

echo "openwrt/target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-glinet-gl-mt6000.dts"

cat ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/files-5.4/arch/arm64/boot/dts/mediatek/mt7986a-glinet-gl-mt6000.dts

sed -i 's/factory 0x0a/factory 0x2a/g' ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/mt7986/base-files/etc/board.d/02_network

sed -i '/glinet,gl-mt6000)/ {n; s/lan1 lan2 lan3 lan4 lan5/lan1 lan2 lan3 lan4 lan5 lan6/}' ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/mt7986/base-files/etc/board.d/02_network

echo "openwrt/target/linux/mediatek/mt7986/base-files/etc/board.d/02_network"

cat ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/mt7986/base-files/etc/board.d/02_network

sed -i 's/MT7986_ePAeLNA_EEPROM_AX6000.bin/MT7986_iPAiLNA_EEPROM_AX6000.bin/g' ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/mt7986/base-files/lib/preinit/90_extract_caldata

echo "openwrt/target/linux/mediatek/mt7986/base-files/lib/preinit/90_extract_caldata"

cat ${GITHUB_WORKSPACE}/openwrt/target/linux/mediatek/mt7986/base-files/lib/preinit/90_extract_caldata
