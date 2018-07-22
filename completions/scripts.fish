# 文件名：scripts.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2018/07/22
# 简介：插件的自动补全脚本。
# 关键字：自动补全

complete -c random -f -d "生成随机数"
complete -c random -f -s h -l help -d "显示帮助信息"

complete -c rand-file -f -d "随机选择文件"
complete -c rand-file -f -s h -l help -d "显示帮助信息"

complete -c del-rand-file -f -d "随机删除文件夹"
complete -c del-rand-file -f -s h -l help -d "显示帮助信息"

complete -c rename-num -f -d "使用数字重命名"
complete -c rename-num -f -s h -l help -d "显示帮助信息"
complete -c rename-num -f -s w -l equal-width -d "使用等宽数字"

complete -c parse-filename -f -d "解析文件名"

complete -c tease -f -d "画中画显示摄像头影像"
complete -c tease -f -s h -l help -d "显示帮助信息"

complete -c monotasking -f -s h -l help -d "显示帮助信息"

