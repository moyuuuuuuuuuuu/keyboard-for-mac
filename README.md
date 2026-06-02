# keyboard-for-mac

一个用于 Windows 的 AutoHotkey v2 脚本，把常用键盘快捷键调整成更接近 macOS 的使用习惯。

脚本文件：[`mac_keyboard.ahk`](./mac_keyboard.ahk)

## 主要功能

- 使用 `Win` 模拟 macOS 的 `Command`
- 使用 `Alt` 模拟部分 macOS 的 `Option`
- 支持复制、粘贴、剪切、全选、撤销、保存、查找等常用操作
- 支持关闭窗口、最小化、新建标签页、刷新、前进后退等窗口/浏览器操作
- 支持 `Alt+Tab` 和 `Win+Tab` 的互换
- 支持 `Win+Space` 打开 Windows 搜索
- 支持类似 macOS 的文本光标移动和按词删除

## 安装

1. 安装 [AutoHotkey v2](https://www.autohotkey.com/)。
2. 下载或克隆本仓库。
3. 双击运行 `mac_keyboard.ahk`。

运行后，AutoHotkey 图标会出现在 Windows 托盘区。

## 常用快捷键

### Command 风格快捷键

| macOS 习惯 | Windows 上按键 | 效果 |
| --- | --- | --- |
| `Command+C` | `Win+C` | 复制 |
| `Command+V` | `Win+V` | 粘贴 |
| `Command+X` | `Win+X` | 剪切 |
| `Command+A` | `Win+A` | 全选 |
| `Command+Z` | `Win+Z` | 撤销 |
| `Command+Shift+Z` | `Win+Shift+Z` | 重做 |
| `Command+S` | `Win+S` | 保存 |
| `Command+F` | `Win+F` | 查找 |
| `Command+W` | `Win+W` | 关闭标签页/文档/窗口 |
| `Command+Q` | `Win+Q` | 关闭当前程序窗口 |
| `Command+T` | `Win+T` | 新建标签页 |
| `Command+L` | `Win+L` | 聚焦地址栏 |
| `Command+R` | `Win+R` | 刷新 |
| `Command+[` | `Win+[` | 后退 |
| `Command+]` | `Win+]` | 前进 |
| `Command+Space` | `Win+Space` | 打开 Windows 搜索 |

### 应用切换

| 按键 | 效果 |
| --- | --- |
| `Alt+Tab` | 打开 Windows 任务视图 |
| `Alt+Shift+Tab` | 打开 Windows 任务视图，带 Shift |
| `Win+Tab` | 经典 Alt-Tab 应用切换 |

### 文本编辑

| macOS 习惯 | Windows 上按键 | 效果 |
| --- | --- | --- |
| `Command+Left` | `Win+Left` | 移动到行首 |
| `Command+Right` | `Win+Right` | 移动到行尾 |
| `Command+Up` | `Win+Up` | 移动到文档开头 |
| `Command+Down` | `Win+Down` | 移动到文档结尾 |
| `Command+Backspace` | `Win+Backspace` | 删除到行首 |
| `Option+Left` | `Alt+Left` | 移动到上一个词 |
| `Option+Right` | `Alt+Right` | 移动到下一个词 |
| `Option+Backspace` | `Alt+Backspace` | 删除上一个词 |
| `Option+Delete` | `Alt+Delete` | 删除下一个词 |

## 开机自启

如果希望开机自动启用：

1. 按 `Win+R`。
2. 输入 `shell:startup` 并回车。
3. 把 `mac_keyboard.ahk` 的快捷方式放到打开的启动文件夹里。

## 更新脚本后不生效怎么办

如果你修改或下载了新版脚本，但快捷键没有变化，通常是旧脚本还在运行。

处理方法：

1. 在 Windows 托盘区找到 AutoHotkey 图标。
2. 右键图标。
3. 选择 `Exit` 退出旧脚本。
4. 重新双击运行新版 `mac_keyboard.ahk`。

## 注意事项

- 本脚本需要 AutoHotkey v2，不能用 AutoHotkey v1 运行。
- 某些软件可能会自己拦截快捷键，导致少数映射无法生效。
- 游戏、远程桌面、虚拟机等场景可能不适合一直开启该脚本。
