# 文件名：rand.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/11
# 更新日期：2019/08/28
# 简介：生成指定范围内的伪随机数，使用时间戳计算。
# 关键字：fish、随机数

function rand -d "生成伪随机数"
  set -l argv_len (count $argv)
  if test $argv_len -eq 2
    set -l min $argv[1]
    set -l max $argv[2]
    if test $min -lt $max
      set -l time_stamp (command date +%s%N)
      set -l random_num (command expr (command expr $time_stamp '%' (command expr $max - $min)) + $min)
      echo $random_num
      return 0
    else
      echo (omf::err)"范围边界不是数字，或者范围不存在。"(omf::off)
      return 1
    end
  else if test $argv_len -eq 1
    switch $argv[1]
      case "-h" "--help"
        help.random
        return 0
      case "*"
        echo (omf::err)"参数不合法。"(omf::off)
        return 1
    end
  else
    echo (omf::err)"参数过多。"(omf::off)
    return 1
  end
end
