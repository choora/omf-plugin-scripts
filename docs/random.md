# random

_使用时间戳生成一定范围的伪随机数。_

## 背景

其实本来就存在 `random` 命令，不过生成的随机数在 0 至 32767 范围中，不能自己规定范围。这个命令使用常见的伪随机数生成算法，利用时间戳的不确定性。

## 参数

* `MIN` 最小值
* `MAX` 最大值

> **注意：** 最终生成的数字范围在 [MIN, MAX) 中。

## 选项

* `-h, --help` 显示帮助信息

> **注意：** 使用 `help.random` 命令也可以查看帮助信息。

## 问题

我对 `fish` 的 `test` 命令还存在疑惑。如果要判断 `$argv[1]` 是否为 `-h` 或者 `--help` 并且只有一个参数（`$argv_len` 为 1）时，如此表达：

```sh
if test \( $argv[1] = '--help' -o $argv[1] = '-a' \) -a \( $argv_len-eq 1 \)
  ...
end
```

若 `$argv[1] = "--help"` 则没有问题，若 `$argv[1] = "-h"` 则会提示语法错误。我认为是 `test` 没有分清 `"-h"` 是否是比较操作符，可是也不知道如何避免（`contains` 命令使用 `--` 来区分）。

所以现在的结论是最好使用 `switch`，可读性也更好。

## 更新

* _2017/08/13_
  * 完成基本功能。
  * 完成文档编写。
  * 完成自动补全脚本。
  * 完成测试脚本。
  * 修复帮助信息格式。
  * 增加返回值。
