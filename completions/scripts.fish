# 文件名：scripts.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/13
# 简介：插件的自动补全脚本。
# 关键字：自动补全

complete -c random -f -d "生成随机数"
complete -c random -f -s h -l help -d "显示帮助信息"

complete -c rand-file -f -d "随机选择文件"
complete -c rand-file -f -s h -l help -d "显示帮助信息"

complete -c del-rand-file -f -d "随机删除文件夹"
complete -c del-rand-file -f -s h -l help -d "显示帮助信息"
