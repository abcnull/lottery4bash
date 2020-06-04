[toc]

**[English](https://github.com/abcnull/lottery4bash/blob/master/README_en.md) | [博客](https://blog.csdn.net/abcnull/article/details/104119940)**

# lottery4bash 简介

该项目是 bash shell 编写的无图形界面的抽奖程序脚本，可以用来做临时的抽奖

目前本人已经提供了一些人员名单[members.txt]以供大家使用，人员名单源自凉宫春日系列作品

```
lottery4bash
  - lucky.sh（抽奖程序 bash shell）
  - members.txt（抽奖成员）
```

# 支持的功能

- 直接读取抽奖人员，或者从文件中读取抽奖人员
- 支持单行读取或多行读取，以空格和换行作为人员区分标识
- 支持设置几人获奖，不输入几人获奖默认 1 人获奖
- 格式化输出获奖人员

# 依赖的环境

- bash shell 3.0+

# 使用演示

**基本格式**

```bash
less [filename] | ./lucky.sh [num]
```

**例如从 members.txt 中抽出两个人**

```bash
less members.txt | ./lucky.sh 2
```

**直接读取人员名单来抽奖**

![直接读取人员名单来抽奖](https://github.com/abcnull/Image-Resources/blob/master/lottery4bash/%E6%89%B9%E6%B3%A8%202020-05-31%20185124.png)

**从文件中读取人员名单来抽奖**

![从文件中读取人员名单来抽奖](https://github.com/abcnull/Image-Resources/blob/master/lottery4bash/%E6%89%B9%E6%B3%A8%202020-05-31%20184840.png)

**多人获奖**

![多人获奖](https://github.com/abcnull/Image-Resources/blob/master/lottery4bash/%E6%89%B9%E6%B3%A8%202020-05-31%20185454.png)

# 源码概述

脚本中通过一个 lucky 函数来实现抽奖功能，本质是使用了 RANDOM 随机数
