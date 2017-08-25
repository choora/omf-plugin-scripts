# 文件名：init.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/25
# 简介：插件初始化脚本，实则为我的 fish 基本配置。

# 常量
set -l USR_PROGRAM_PATH {$HOME}"/程序" # 程序路径。
set -l USR_CONFIG_PATH {$HOME}"/同步/配置" # 配置文件路径。
set -l SCRIPTS_PATH {$HOME}"/项目/omf-plugin-scripts" # 脚本路径。

# 启动
source {$USR_PROGRAM_PATH}"/fishmarks/marks.fish" # 启动 fishmarks。
source {$SCRIPTS_PATH}"/completions/scripts.fish" # 自动补全不加载的临时解决办法。

# 缩写
# 别名
alias del="trash-put" # 安全删除文件。
alias pureref="PureRef" # 启动 PureRef。
alias tickeys="Tickeys" # 启动 Tickeys。
alias krita="/usr/share/krita/appimage/krita.appimage" # 启动 Krita。

# 参数缩写
alias aria2c-baidu="aria2c -D --conf-path "{$USR_CONFIG_PATH}"/aria2c/aria2-baidu-exporter.conf" # aria2c 下载百度网盘文件。
alias clip="xclip -sel clip" # 管理剪贴板。
alias down="xset dpms force off" # 关闭屏幕。

# 脚本
alias bilidan={$USR_PROGRAM_PATH}"/bilidan/bilidan.py" # 播放哔哩哔哩视频。
# alias dedrm={$USR_PROGRAM_PATH}"/kindle-dedrm --kindle=90DD0703519306KL" # 解除亚马逊电子书的加密。
alias huami={$USR_PROGRAM_PATH}"/huami/huami.py" # 花密命令行工具。
alias kindle-unpack={$USR_PROGRAM_PATH}"/kindle-unpack/KindleUnpack.pyw" # 将亚马逊电子书转为 ePub 电子书。
alias rm-sdr="python3 "{$USR_PROGRAM_PATH}"/remove-sdr-kindle/remove-sdr.py" # 删除 Kindle 内的 sdr 文件夹。
