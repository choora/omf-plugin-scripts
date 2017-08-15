# 文件名：help.del-rand-file.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/15
# 简介：打印 del-rand-file 命令的帮助信息。
# 关键字：帮助

function help.del-rand-file -d "打印 del-rand-file 命令的帮助信息"
  echo "在当前文件夹下随机删除文件，直到文件数处于指定值。"
  echo ""
  echo (omf::dim)"用法："(omf::off)
  echo "  del-rand-file ("(omf::dim)"-h"(omf::off)" | "(omf::dim)"--help"(omf::off)")"
  echo "  del-rand-file "(omf::em)"NUM"(omf::off)
  echo ""
  echo (omf::dim)"选项："(omf::off)
  echo "  -h, help 显示帮助信息"
  echo ""
  echo (omf::dim)"示例："(omf::off)
  echo "  del-rand-file -h"
  echo "  del-rand-file 200"
end

