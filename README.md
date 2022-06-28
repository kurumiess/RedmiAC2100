**说明** | [教程](https://p3terx.com/archives/build-openwrt-with-github-actions.html)

# 云编译脚本基于[P3TERX](https://github.com/P3TERX/Actions-OpenWrt)的 Actions-OpenWrt 脚本.
官方源码OpenWrt 21.02

## 设备列表

| 机型 | 固件 | 默认网关 |
| :----: | :----: | :----------: |
| [红米 AC2100](./.github/workflows/RM2100-lede-openwrt.yml) | ✅ | 192.168.3.1 |
| [斐讯 K2P](./.github/workflows/K2P-openwrt.yml) | ❎ |  |
| [斐讯 N1](./.github/workflows/Lean_Docker_LEDE_N1.yml) | ❎ |  |

## SSH 流程操作

- 点击 `Run workflow` SSH操作默认`false`，输入 `true` 开启。
- 工作页面步骤到 SSH 时，点击链接进入SSH界面。
- 黑屏窗口按 `ctrl+c`，输入 `cd openwrt && make menuconfig` 进入图形配置界面。
- 主要配置`Target System` `Subtarget` `Target Profile` `LuCI`,完成后选中 `Save` 保存，然后选中 `Exit` 退出。
- 按 `ctrl+d` 退出会话。

## 致谢
[GitHub Actions](https://github.com/features/actions) | [OpenWrt](https://github.com/openwrt/openwrt) | [Lean's OpenWrt](https://github.com/coolsnowwolf/lede) | [tmate](https://github.com/tmate-io/tmate) | [mxschmitt/action-tmate](https://github.com/mxschmitt/action-tmate) | [csexton/debugger-action](https://github.com/csexton/debugger-action) | [Cowtransfer](https://cowtransfer.com) | [WeTransfer](https://wetransfer.com/) | [Mikubill/transfer](https://github.com/Mikubill/transfer) | [softprops/action-gh-release](https://github.com/softprops/action-gh-release) | [ActionsRML/delete-workflow-runs](https://github.com/ActionsRML/delete-workflow-runs) | [dev-drprasad/delete-older-releases](https://github.com/dev-drprasad/delete-older-releases) | [peter-evans/repository-dispatch](https://github.com/peter-evans/repository-dispatch)

## License

[MIT](https://github.com/VergilGao/openwrt-actions/blob/master/LICENSE) © VergilGao
