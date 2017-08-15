# 文件名：parse-filename.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/15
# 更新日期：2017/08/15
# 简介：解析当前路径下文件的文件名（有规定格式），并复制到剪贴板。
# 关键字：文件名、剪贴板
# 注意：由于暂时文件名格式不能修改，故未写帮助信息，只是临时使用。

function parse-filename -d "解析文件名"
  set -l files (ls)
  set -l files_len (count $files)
  for i in (seq 1 $files_len)
    set -l file $files[$i]
    echo $file | sed -r "s/^(.*)：(.*)\..*/\2\t\1/"
  end | clip
end
