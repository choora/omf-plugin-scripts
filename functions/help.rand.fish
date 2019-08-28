# 文件名：help.random.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2019/08/28
# 简介：打印 random 命令的帮助信息。
# 关键字：帮助

function help.rand -d "打印 random 命令的帮助信息"
  echo "使用时间戳生成一定范围的伪随机数。"
  echo ""
  echo (omf::dim)"用法："(omf::off)
  echo "  random ("(omf::dim)"-h"(omf::off)" | "(omf::dim)"--help"(omf::off)") "
  echo "  random "(omf::em)"<MIN> <MAX>"(omf::off)
  echo ""
  echo (omf::dim)"选项："(omf::off)
  echo "  -h, --help 显示帮助信息"
  echo ""
  echo (omf::dim)"示例："(omf::off)
  echo "  random -h"
  echo "  random 1 100"
end
