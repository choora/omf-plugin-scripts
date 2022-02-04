# 文件名：init.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2022/02/03
# 简介：插件初始化脚本，我的 fish 基本配置

# 环境变量
# 
# 此处的环境变量都是局部变量，只是为了简洁，并不作为脚本的环境变量
# 配置文件（dot file）路径中存放真实的配置文件，使用软链接将配置文件链接到程序默认的配置文件路径
#
# 程序路径：~/程序
# 配置文件路径（坚果云同步）：~/同步/备用/配置
# omf-plugin-scripts 路径：~/程序/omf-plugin-scripts
set -l USR_PROGRAM_PATH {$HOME}"/程序" # 程序路径
set -l USR_CONFIG_PATH {$HOME}"/同步/备用/配置" # 配置文件路径
set -l SCRIPTS_PATH {$USR_PROGRAM_PATH}"/omf-plugin-scripts" # 脚本路径
# set JAVA_HOME "/usr/java/jre1.8.0_181" # 配置 Java 路径
# set PATH {$JAVA_HOME}"/bin" $PATH

# 配置
# set -g theme_color_scheme "gruvbox" # 配置 Powerline 提示符配色为 gruvbox

# 启动
source {$USR_PROGRAM_PATH}"/fishmarks/marks.fish" # 启动 fishmarks

# 缩写
# 别名
# alias bing-nice-wallpapers="python3 "{$USR_PROGRAM_PATH}"/bing-nice-wallpapers/BingNiceWallpapers.pyw" # 启动“必应好壁纸”
# alias naotu={$USR_PROGRAM_PATH}"/naotu/DesktopNaotu" # 启动百度脑图
# alias simplenote="/opt/Simplenote/simplenote" # 启动 Simplenote
# alias tickeys="Tickeys" # 启动 Tickeys
# alias krita={$USR_PROGRAM_PATH}"/krita-4.1.7.appimage" # 启动 Krita
alias del="trash-put" # 安全删除文件
alias pureref="PureRef" # 启动 PureRef

# 参数缩写
# alias aria2c-baidu="aria2c -D --conf-path "{$USR_CONFIG_PATH}"/aria2c/aria2-baidu-exporter.conf" # aria2c 下载百度网盘文件
alias clip="xclip -sel clip" # 管理剪贴板
alias down="xset dpms force off" # 关闭屏幕

# 脚本
# alias bilidan={$USR_PROGRAM_PATH}"/bilidan/bilidan.py" # 播放哔哩哔哩视频
# alias dedrm={$USR_PROGRAM_PATH}"/kindle-dedrm --kindle=90DD0703519306KL" # 解除亚马逊电子书的加密
# alias kindle-unpack={$USR_PROGRAM_PATH}"/kindle-unpack/KindleUnpack.pyw" # 将亚马逊电子书转为 ePub 电子书
# alias huami={$USR_PROGRAM_PATH}"/huami/huami.py" # 花密命令行工具
# alias rm-sdr="python3 "{$USR_PROGRAM_PATH}"/remove-sdr-kindle/remove-sdr.py" # 删除 Kindle 内的 sdr 文件夹

# 函数
# function gi --description "生成 Git 过滤文件"
#   curl -L -s "https://www.gitignore.io/api/$argv"
# end

# 自定义终端启动信息
function fish_greeting
end

# 自定义终端标题
function fish_title
    echo $FISH_TITLE
end

function title
    set -xg FISH_TITLE $argv[1]
end
