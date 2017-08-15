# 文件名：rand-file.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/15
# 简介：从当前文件夹中随机选择一个文件，打印被选中的文件名。
# 关键字：fish

function rand-file -d "随机选择一个文件"
  set -l argv_len (count $argv)
  if test $argv_len -eq 0
    set -l files (ls)
    set -l files_len (count $files)
    set -l file $files[(random 1 $files_len)]
    echo $file
    return 0
  else if test $argv_len -eq 1
    switch $argv[1]
      case "-h" "--help"
        help.rand-file
      case '*'
        echo (omf::err)"参数不合法。"(omf::off)
        return 1
    end
  else
    echo (omf::err)"参数过多。"(omf::off)
    return 1
  end
end
