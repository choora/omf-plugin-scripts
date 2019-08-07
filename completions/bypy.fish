# 文件名：bypy.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2019/08/06
# 更新日期：2019/08/07
# 简介：bypy 命令的自动补全脚本
# 关键字：自动补全


# 可选参数

complete -c bypy -d "百度网盘命令行客户端"
complete -c bypy -f -s h -l help -d "显示帮助信息"
complete -c bypy -f -s V -l version -d "显示程序版本号"
complete -c bypy -f -s d -l debug -d "设置调试信息输出级别"
complete -c bypy -f -o dd -d "设置调试信息输出级别为 1"
complete -c bypy -f -o ddd  -d "设置调试信息输出级别为 2"
complete -c bypy -f -s v -l verbose -d "设置详细输出级别"
complete -c bypy -x -l include-regex -d "使用正则表达式过滤文件"
complete -c bypy -x -l on-dup -a "overwrite skip prompt" -d "当文件或文件夹已存在时的处理方式"
complete -c bypy -x -l mirror -d "选择 PCS 镜像"
complete -c bypy -f -l select-fastest-mirror -d "选择最快的 PCS 镜像"
complete -c bypy -f -l rapid-upload-only -d "只上传可以「快速上传」的大文件"
complete -c bypy -x -l downloader -a "aria2" -d "设置下载程序"
complete -c bypy -r -l config-dir -d "选择配置文件"
complete -c bypy -f -s c -l clean -d "删除认证信息"

# 子命令

complete -c bypy -n "__fish_prog_needs_command" -f -a refreshtoken -d "重新登录"
complete -c bypy -n "__fish_prog_needs_command" -f -a cleancache -d "清理缓存"
complete -c bypy -n "__fish_prog_needs_command" -a compare -d "对比本地文件夹和远程文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a "copy cp" -d "在远程文件夹复制文件或文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a "delete remove rm" -d "在远程文件夹删除文件或文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a downdir -d "下载远程文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a downfile -d "下载远程文件"
complete -c bypy -n "__fish_prog_needs_command" -a download -d "下载远程文件或文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a "list ls" -d "显示远程文件夹内容"
complete -c bypy -n "__fish_prog_needs_command" -a meta -d "获取制定路径的信息"
complete -c bypy -n "__fish_prog_needs_command" -a mkdir -d "创建远程文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a "move mv rename ren" -d "移动远程文件夹或文件夹"
complete -c bypy -n "__fish_prog_needs_command" -f -a "quota info" -d "显示容量信息"
complete -c bypy -n "__fish_prog_needs_command" -a restore -d "从回收站恢复文件"
complete -c bypy -n "__fish_prog_needs_command" -a search -d "搜索文件"
complete -c bypy -n "__fish_prog_needs_command" -a syncdown -d "同步至本地文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a syncup -d "同步至远程文件夹"
complete -c bypy -n "__fish_prog_needs_command" -a upload -d "上传至远程文件夹"

