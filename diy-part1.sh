#!/bin/bash
# Description: OpenWrt DIY script part 1 (Before Update feeds)
# Optional: Add third-party feeds

# 1. 添加 Passwall 及其依赖源 (包含完整的 sing-box / xray / trojan / hysteria 协议支持)
echo 'src-git passwall_packages https://github.com/openwrt-passwall/openwrt-passwall-packages.git;main' >> feeds.conf.default
echo 'src-git passwall https://github.com/openwrt-passwall/openwrt-passwall.git;main' >> feeds.conf.default

# 2. 如果官方源中缺少最新 HomeProxy，可从官方独立仓库拉取（备用）
# echo 'src-git homeproxy https://github.com/immortalwrt/homeproxy.git;master' >> feeds.conf.default
