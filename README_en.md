[toc]

**[中文](https://github.com/abcnull/webuitest4j/blob/master/README_en.md) | [Blog](https://blog.csdn.net/abcnull/article/details/106433145)**

# Lottery4bash Brief

This project is a bash shell written without graphical interface lottery program script, can be used to do temporary lottery

Currently, a list of members[members.txt] has been readily available for everyone to use. The list of members is from **凉宫ハルヒシリーズ**

```bash
lottery4bash
  - lucky.sh（lottery program bash shell）
  - members.txt（lottery members）
```

# Features Supported

- this project support to read the output directly, or read the lottery members from a file
- this project support to read single-line or muti-line with space character and "\n" dividing lottery members
- this project support to set the numbers of final winners. there is one winner without setting numbers
- this project support to printf the result

# Environment Depended on

- bash shell 3.0+

# Model Show

**standard format**

```bash
less [filename] | ./lucky.sh [num]
```

**lottery by directly reading output**

![lottery by directly reading output](https://github.com/abcnull/Image-Resources/blob/master/lottery4bash/%E6%89%B9%E6%B3%A8%202020-05-31%20185124.png)

**lottery by reading file**

![lottery by reading file](https://github.com/abcnull/Image-Resources/blob/master/lottery4bash/%E6%89%B9%E6%B3%A8%202020-05-31%20184840.png)

**lottery several members**

![lottery several members](https://github.com/abcnull/Image-Resources/blob/master/lottery4bash/%E6%89%B9%E6%B3%A8%202020-05-31%20185454.png)

# Source Code

the program implements lottery by writting a lucky function using RANDOM to randomization
