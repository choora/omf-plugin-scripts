# 文件名：del-rand-file.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/13
# 简介：在当前文件夹下随机删除文件，直到文件数处于指定值。
# 关键字：fish、随机

function del-rand-file -d "在当前文件夹下随机删除文件，直到文件数处于指定值。"
  set -l argv_len (count $argv)
  set -l files (ls)
  set -l files_len (count $files)
  if test $argv_len -eq 1
    if echo $argv[1] | grep -q "^[0-9]\+\$"
      if test $argv[1] -le $files_len
        set -l files_final_len $argv[1]
        set -l del_files_len (expr $files_len - $files_final_len)
        for i in (seq 1 $del_files_len)
          set -l file (rand-file)
          if test -e $file
            echo (omf::dim)"删除："(omf::off){$file}
            del $file
          else
            continue
          end
        end
        return 0
      else
        echo (omf::err)"目标文件数大于当前文件数。"
        return 1
      end
    else
      switch $argv[1]
        case '-h' '--help'
          help.del-rand-file
        case '*'
          echo (omf::err)"参数不合法。"(omf::off)
          return 1
      end
    end
  else
    echo (omf::err)"参数数量错误。"(omf::off)
    return 1
  end
end
