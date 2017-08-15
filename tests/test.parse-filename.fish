# 文件名：test.parse-filename.fish
# 作者：抽拉（choooora@sina.com）
# 创建日期：2017/08/15
# 更新日期：2017/08/15
# 简介：parse-filename 命令的测试脚本。
# 关键字：测试

set TMP_PATH "tmp"
set TEST_PATH {$TMP_PATH}"/parse-filename"
mkdir -p $TEST_PATH
cd $TEST_PATH
touch "1234：abcd.txt"
touch "abcd：efgh.txt"
parse-filename
cd -
del $TEST_PATH
