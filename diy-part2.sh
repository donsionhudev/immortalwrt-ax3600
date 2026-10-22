#!/bin/bash
# Description: OpenWrt DIY script part 2 (After Update & Install feeds)

# 1. 修改默认管理后台 IP 为 192.168.3.1
sed -i 's/192.168.1.1/192.168.3.1/g' package/base-files/files/bin/config_generate

# 2. 修改默认主机名为 AX3600
sed -i 's/ImmortalWrt/AX3600/g' package/base-files/files/bin/config_generate

# 3. 设置默认时区为 Asia/Shanghai (CST-8)
sed -i "s/'UTC'/'CST-8'\n\t\tset system.@system[-1].zonename='Asia\/Shanghai'/g" package/base-files/files/bin/config_generate

# 4. 设置默认主题为 Argon
sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile 2>/dev/null || true

# 5. 默认开启 Wi-Fi，并配置默认 SSID 和密码
sed -i 's/disabled=1/disabled=0/g' package/kernel/mac80211/files/lib/netifd/wireless/mac80211.sh 2>/dev/null || true

# 6. 设置 root 初始密码为空（免初次登录输入错误密码被锁）
sed -i 's/root:[^:]*:/root::/g' package/base-files/files/etc/shadow 2>/dev/null || true
