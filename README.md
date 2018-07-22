# <img align="left" width="75px" src="https://cdn.rawgit.com/oh-my-fish/oh-my-fish/e4f1c2e0219a17e2c748b824004c8d0b38055c16/docs/logo.svg"/> Scripts ![mit-license-badge][mit-license-badge-url]

_你绝对不会想要使用的 Oh My Fish! 插件，提供各种快餐功能。_

## 简介

这是一个通用性及其糟糕的脚本集合，本来算不上 Oh My Fish! 插件，但是不能否认的是，它确实可以被 Oh My Fish! 认作插件并管理。

如果你在脚本列表中发现了某个感兴趣的脚本，很遗憾，你有八成以上的几率无法正常运行它，因为这些脚本的依赖实在太多了。

话虽如此，作者却想尽力完善这个插件的文档，使得问题可以快速解决。不过这对于作者以外的人来说，几乎没有意义。

## 依赖

* [fish][fish-url]
* [Oh My Fish!][oh-my-fish-url]
* [Git][git-url]
* [fishmarks][fishmarks-url]
* [trash-cli][trash-cli-url]
* [PureRef][pureref-url]
* [Tickeys][tickeys-url]
* aria2c
* xclip
* [BiliDan][bilidan-url]
* [huami-cli][huami-cli-url]
* [KindleUnpack][kindle-unpack-url]
* [remove-sdr-kindle][remove-sdr-kindle-url]
* [ImageMagick][imagemagick-url]
* mpv


## 脚本目录

* `init.fish` 我的基本配置，以别名为主。
* [random](docs/random.md) 使用时间戳生成一定范围的伪随机数。
* [rand-file](docs/rand-file.md) 从当前文件夹中随机选择一个文件。
* [del-rand-file](docs/del-rand-file.md) 在当前文件夹下随机删除文件，直到文件数处于指定值。
* [rename-num](docs/rename-num.md) 将当前文件夹下的文件使用数字重命名。
* [shadow](docs/shadow.md) 为图片添加阴影。
* [parse-filename](docs/parse-filename.md) 解析文件名。
* [tease](docs/tease.md) 画中画显示摄像头影像。
* [monotasking](docs/monotasking.md) “单核工作法”闹钟。

## 问题

* [ ] 既然自动补全中写了命令的描述，又在命令定义时写了描述，且内容不一致，是否会有冲突？
* [ ] GitHub 浏览 `init.fish` 时有错误的空格出现，但文件中并没有。
* [ ] 自动补全不能加载，而且 `complete` 命令的使用还有一些问题。（_e.g._ 明明使用了 `-f` 还是在补全文件名；也没有显示描述。）
* [ ] 参数的解析还是太初级。

## 协议

本项目采用 [MIT 许可证][mit-license-url] 进行许可。

[mit-license-badge-url]: https://img.shields.io/badge/license-MIT-007EC7.svg
[fish-url]: https://fishshell.com
[oh-my-fish-url]: https://github.com/oh-my-fish
[git-url]: https://git-scm.com
[mit-license-url]: https://opensource.org/licenses/MIT
[fishmarks-url]: https://github.com/techwizrd/fishmarks
[trash-cli-url]: https://github.com/andreafrancia/trash-cli
[pureref-url]: https://www.pureref.com
[tickeys-url]: http://www.yingdev.com/projects/tickeys
[bilidan-url]: https://github.com/m13253/BiliDan
[huami-cli-url]: https://github.com/ninehills/huami-cli
[kindle-unpack-url]: https://github.com/kevinhendricks/KindleUnpack
[remove-sdr-kindle-url]: https://github.com/purocean/remove-sdr-kindle
[imagemagick-url]: https://www.imagemagick.org/script/index.php

