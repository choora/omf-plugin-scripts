#!/usr/bin/env fish
# 文件名：test.rename-num.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/14
# 更新日期：2017/08/14
# 简介：rename-num 命令的测试脚本。
# 关键字：测试

echo "该测试脚本需要在项目文件夹根目录下执行。"
set -l TMP_PATH "tmp"
set -l TEST_PATH {$TMP_PATH}"/rename-num"
mkdir -p $TEST_PATH
cd $TEST_PATH

function new-test-files -a n -d "创建测试文件"
  touch a.txt # 普通文件。
  touch a # 无后缀名文件。
  touch a.b # 无后缀名文件，但包含点号。
  touch a.b. # 以点号结尾的文件。
  for i in (seq 1 (expr $n - 4))
    touch {$i}".txt"
  end
end

function del-test-files -d "删除测试文件"
  del *
end

rename-num -h
rename-num --help

new-test-files 15
rename-num
del-test-files

new-test-files 15
rename-num -w
del-test-files

new-test-files 5
rename-num -w
ls
cd -
del $TEST_PATH
