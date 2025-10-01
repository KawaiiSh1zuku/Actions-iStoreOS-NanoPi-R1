# iStore OS For NanoPi R1

[![iStore使用文档](https://img.shields.io/badge/使用文档-iStore%20OS-brightgreen?style=flat-square)](https://doc.linkease.com/zh/guide/istoreos) [![最新固件下载](https://img.shields.io/github/v/release/KawaiiSh1zuku/Actions-iStoreOS-NanoPi-R1?style=flat-square&label=最新固件下载)](../../releases/latest)

![支持设备](https://img.shields.io/badge/支持设备:-blueviolet.svg?style=flat-square) ![NanoPi R1](https://img.shields.io/badge/NanoPi%20R1-blue.svg?style=flat-square)

# 已知问题 / Known Bugs

1. 设备树配置存在问题，无法驱动无线网卡。需要手动替换`istoreos.dtb`。
2. 分区存在问题，需要手动分一个`userdata`分区出来。

## 默认配置

- IP: `http://192.168.100.1` or `http://iStoreOS.lan/`
- 用户名：`root`
- 密码： `password`
- 默认打包了 `Docker`
- 如果设备只有一个网口，则此网口就是 `LAN` , 如果大于一个网口, 默认第一个网口是 `WAN` 口, 其它都是 `LAN`
- 如果要修改 `LAN` 口 `IP` , 首页有个内网设置，或者用命令 `quickstart` 修改
- 每月 `16` 日和 `30` 日自动构建, `Release` 中只保留不同架构的最新版本
- 历史版本在 `Actions` 中选择一个已经运行完成且成功的 `workflow` 在页面底部可以看到 `Artifacts`, `Artifacts` 需要登录 Github 才能下载

## 支持架构

### sunxi-cortexa7 架构

| 设备      | 包名称                                                       |
| --------- | ------------------------------------------------------------ |
| NanoPi R1 | `istoreos-sunxi-cortexa7-friendlyarm_nanopi-r1-<filesystem>-sdcard.img.gz` |

## 鸣谢

- [istoreos](https://github.com/istoreos/istoreos)
- [P3TERX/Actions-OpenWrt](https://github.com/P3TERX/Actions-OpenWrt)
- [Microsoft Azure](https://azure.microsoft.com)
- [GitHub Actions](https://github.com/features/actions)
- [OpenWrt](https://github.com/openwrt/openwrt)
- [Lean&#39;s OpenWrt](https://github.com/coolsnowwolf/lede)
- [tmate](https://github.com/tmate-io/tmate)
- [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate)
- [csexton/debugger-action](https://github.com/csexton/debugger-action)
- [Cowtransfer](https://cowtransfer.com)
- [WeTransfer](https://wetransfer.com/)
- [Mikubill/transfer](https://github.com/Mikubill/transfer)
- [softprops/action-gh-release](https://github.com/softprops/action-gh-release)
- [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs)
- [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases)
- [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)
- [draco-china/istoreos-actions](https://github.com/draco-china/istoreos-actions)
- [xiaomeng9597/Actions-iStoreOS-RK35XX](https://github.com/xiaomeng9597/Actions-iStoreOS-RK35XX)
