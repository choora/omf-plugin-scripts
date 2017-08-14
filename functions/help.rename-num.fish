# 文件名：help.rename-num.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/14
# 更新日期：2017/08/14
# 简介：打印 rename-num 命令的帮助信息。
# 关键字：帮助

function help.rename-num -d "打印 rename-num 命令的帮助信息"
  echo "将当前文件夹下的文件使用数字重命名。"
  echo ""
  echo (omf::dim)"用法："(omf::off)
  echo "  rename-num ("(omf::dim)"-h"(omf::off)" | "(omf::dim)"--help"(omf::off)")"
  echo "  rename-num"
  echo ""
  echo (omf::dim)"参数："(omf::off)
  echo "  -h, --help 显示帮助信息"
  echo ""
  echo (omf::dim)"示例："(omf::off)
  echo "  rename-num -h"
  echo "  rename-num"
end
