# 文件名：monotasking.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2018/07/21
# 更新日期：2018/07/31
# 简介：“单核工作法”闹钟，可以选择播放白噪音或背景音。
# 关键字：fish、自我管理、效率

function monotasking -d "单核工作法闹钟"
  set -l argv_len (count $argv)
  if test $argv_len -ge 1
    switch $argv[1]
      case "-h" "--help"
        help.monotasking
        return 0
      case "*"
        echo (omf::err)"参数不合法。"(omf::off)
        return 1
      end
  end

  set now (date "+%H:%M:%S")
  set now_hour (date "+%H")
  set now_min (date "+%M")
  if test $now_min -ge 0 -a $now_min -le 5
    set end_hour $now_hour
    set end_min "30"
  else if test $now_min -gt 5 -a $now_min -lt 30
    set end_hour (math $now_hour" + 1")
    set end_min "00"
  else if test $now_min -ge 30 -a $now_min -le 35
    set end_hour (math $now_hour" + 1")
    set end_min "00"
  else # 这里省略了范围，实际是 36 <= now_min <= 59。
    set end_hour (math $now_hour" + 1")
    set end_min "30"
  end

  if echo $end_hour | grep -Eq "^[0-9]\$" #如果小时数为个位的话需要用 0 占高位。
    set end_hour "0"$end_hour
  else if test $end_hour -eq 24 # 如果闹钟时间为凌晨 0 点的情况。
    set end_hour "00"
  else
  end

  set end $end_hour":"$end_min""

  while test $now != $end
    set now (date "+%H:%M")
    echo -en "\r"(omf::dim)"当前时间："(omf::off)$now
    echo -en (omf::dim)" 结束时间："(omf::off)$end
    sleep 1
  end
  notify-send "时间到了！"
  return 0
end
