# 文件名：tease.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/24
# 更新日期：2017/08/24
# 简介：画中画显示摄像头捕获的画面，使用 mpv。可以在跳 INSANITY 健身操时使用。
# 关键字：播放

function tease -d "画中画显示摄像头"
  set argv_len (count $argv)
  if test $argv_len -eq 1
    switch $argv[1]
      case "-h" "--help"
        help.tease
        return 0
      case "*"
        mpv --no-border --fs $argv[1] & # 全屏播放目标文件。
        mpv --ontop --no-border --autofit=45% --geometry=100%:0% --tv-device=/dev/video0 --tv-width=1920 --tv-height=1080 --tv-fps=100 --vf=mirror tv:// & # 画中画显示摄像头画面。
        return 0
    end
  else
    echo (omf::err)"参数数量错误。"(omf::off)
    return 1
  end
end
