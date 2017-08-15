# 文件名：help.rand-file.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/15
# 简介：打印 rand-file 命令的帮助信息。
# 关键字：帮助

function help.rand-file -d "打印 rand-file 命令的帮助信息"
  echo "从当前文件夹中随机选择一个文件。"
  echo ""
  echo (omf::dim)"用法："(omf::off)
  echo "  rand-file ("(omf::dim)"-h"(omf::off)" | "(omf::dim)"--help"(omf::off)")"
  echo "  rand-file"
  echo ""
  echo (omf::dim)"选项："(omf::off)
  echo "  -h, --help 显示帮助信息"
  echo ""
  echo (omf::dim)"示例："(omf::off)
  echo "  rand-file"
  echo "  rand-file -h"
end
