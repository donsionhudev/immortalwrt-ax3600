# 小米 AX3600 ImmortalWrt 24.10 大分区满血固件 (GitHub Actions 云编译)

本项目专为 **小米 AIoT 路由器 AX3600**（已刷入不死 U-Boot 和 240MB 大分区分区表）量身定制，通过 GitHub Actions 自动化编译最新的 ImmortalWrt 24.10 固件。

---

## 🌟 核心特性

* **稳定基底**：基于官方 **ImmortalWrt 24.10**，采用 **Linux 6.6 LTS** 黄金稳定内核（拒绝 6.18 测试内核翻车）；
* **大分区专属**：Target Profile 锁定为 `Xiaomi AX3600 (OpenWrt expand layout)`，完美适配 240MB 大分区，可用空间充足；
* **满血硬件加速**：集成高通 **Qualcomm NSS 硬件转发加速驱动**，千兆/2.5G 跑满 CPU 几乎 0% 占用，低温不发热；
* **最新 sing-box 客户端双全**：
  * **HomeProxy**：ImmortalWrt 官方原生 sing-box 客户端，深度适配 firewall4 (nftables)，轻量极速；
  * **PassWall**：老牌全能王，支持切换指定 `sing-box` 内核，支持 Hysteria 2、TUIC、Xray、Shadowsocks 等全协议；
* **精心定制网络与系统**：
  * **默认后台 IP**：`192.168.3.1`
  * **默认登录账号**：`root`
  * **默认登录密码**：无（留空直接回车即可）
  * **默认管理主题**：经典美观的 `Argon`
  * **默认 Wi-Fi**：出厂自启，名称 `AX3600` / `AX3600_5G`，默认密码 `12345678`
  * **实用插件集**：Turbo ACC（BBR加速）、UPnP 自动映射、ttyd 网页终端、定时重启等。

---

## 🚀 如何触发云编译？

1. 打开您的 GitHub 仓库页面：`https://github.com/donsionhudev/immortalwrt-ax3600`
2. 点击上方的 **`Actions`** 选项卡；
3. 在左侧列表中点击 **`Build ImmortalWrt AX3600 (Expand Layout)`**；
4. 点击右侧的 **`Run workflow`** 下拉按钮，点击绿色的 **`Run workflow`** 按钮；
5. 稍等约 40~60 分钟，编译完成后会自动在仓库的 **`Releases`** 页面发布生成的固件。

---

## 📦 固件文件说明

* **初次从不死 U-Boot 网页（`192.168.1.1`）刷入**：
  请下载并上传：**`*xiaomi_ax3600-squashfs-factory.ubi`**
* **后续在 OpenWrt 系统后台直接保留配置升级**：
  请下载并在系统后台“备份/升级”页面上传：**`*xiaomi_ax3600-squashfs-sysupgrade.bin`**
