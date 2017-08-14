# 文件名：shadow.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/14
# 更新日期：2017/08/14
# 简介：使用 convert 命令为图片增加阴影，适用于窗口截图。
# 关键字：fish、convert
# 参考：https://gxnotes.com/article/89666.html

function shadow -d "为图片添加阴影" -a input
  if test -z $input
    echo (omf::err)"请选择一个文件。"(omf::off)
    return 1
  else if test ! -e $input
    echo (omf::err)"文件不存在。"(omf::off)
  else
    set -l filename (echo $input | sed -r "s/^(.*)(\.\w*)\$/\1/")
    set -l ext (echo $input | sed -r "s/^(.*)(\.\w*)\$/\2/")
    set -l output {$filename}"-shadow"{$ext}
    convert $input \( +clone -background black -shadow 80x20+0+15 \) +swap -background transparent -layers merge +repage $output
    return 0
  end
end
