# 文件名：rename-num.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/14
# 更新日期：2017/08/15
# 简介：将当前文件夹下的文件使用数字重命名。
# 关键字：fish、重命名

function rename-num -d "使用数字重命名"
  set -l argv_len (count $argv)
  set -l files (ls)
  set -l files_len (count $files)

  if test $argv_len -eq 1
    switch $argv[1]
      case "-w" "--equal-width"
        set eq_width 1
      case "-h" "--help"
        help.rename-num
        return 0
      case "*"
        echo (omf::err)"不合法的参数。"(omf::off)
        return 1
    end
  else if test $argv_len -eq 0
      set eq_width 0
  else
    echo (omf::err)"参数过多。"(omf::off)
    return 1
  end

  # 检测等宽选项是否开启。
  if test $eq_width -eq 1
    set seq_nums (seq -w 1 $files_len)
  else
    set seq_nums (seq 1 $files_len)
  end

  for i in $seq_nums
    set -l file $files[$i]
    if echo $file | grep -q "\." # 判断文件是否含有扩展名，即使是 hello.world 这种文件名中含有点也会认为有扩展名。
      set file_ext (echo $file | sed -r "s/^.*(\.\w*)\$/\1/") # 扩展名是带上点号的；若文件名为“hello.world.”，则扩展名会认为是“.”。
    else
      set file_ext ""
    end
    set -l final_file {$i}{$file_ext}
    echo (omf::dim)"重命名："(omf::off){$file}" -> "{$final_file}
    mv -f {$file} {$final_file}
  end

  if test $eq_width -eq 1 -a $files_len -lt 10 # 若开启等宽，且总文件数不足 10 个，则给文件名开头添上 0。
    rename "s/^/0/" *
  end

  return 0
end
