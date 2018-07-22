# 文件名：help.monotasking.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2018/07/22
# 更新日期：2018/07/22
# 简介：打印 monotasking 命令的帮助信息。
# 关键字：帮助

function help.monotasking -d "打印 monotasking 命令的帮助信息"
  echo "“单核工作法”闹钟。"
  echo ""
  echo (omf::dim)"用法："(omf::off)
  echo "  monotasking ("(omf::dim)"-h"(omf::off)" | "(omf::dim)"--help"(omf::off)")"
  echo ""
  echo (omf::dim)"选项："(omf::off)
  echo "  -h, --help 显示帮助信息"
  echo ""
  echo (omf::dim)"示例："(omf::off)
  echo "  monotasking"
  echo "  monotasking -h"
end
