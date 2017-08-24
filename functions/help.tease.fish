# 文件名：help.tease.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/24
# 更新日期：2017/08/24
# 简介：显示 tease 命令的帮助信息。
# 关键字：帮助

function help.tease -d "显示 tease 命令的帮助信息"
  echo "画中画显示摄像头画面。"
  echo ""
  echo (omf::dim)"用法："(omf::off)
  echo "  tease ("(omf::dim)"-h"(omf::off)" | "(omf::dim)"--help"(omf::off)")"
  echo "  tease "(omf::em)"<FILE>"(omf::off)
  echo ""
  echo (omf::dim)"选项："(omf::off)
  echo "  -h, --help 显示帮助信息"
  echo ""
  echo (omf::dim)"示例："(omf::off)
  echo "tease -h"
  echo "tease 01.mp4"
end
