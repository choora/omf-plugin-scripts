#!/usr/bin/env fish
# 文件名：del-rand-file.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/13
# 更新日期：2017/08/15
# 简介：del-rand-file 命令的测试脚本。
# 关键字：测试

echo "该测试脚本需要在项目文件夹根目录下执行。"
set -l TMP_PATH "tmp"
set -l TEST_PATH {$TMP_PATH}"/del-rand-file"
mkdir -p $TEST_PATH
cd $TEST_PATH
for i in (seq 1 5)
  touch {$i}".txt"
end
del-rand-file -h
del-rand-file --help
del-rand-file 10
del-rand-file 3
cd -
del $TEST_PATH
