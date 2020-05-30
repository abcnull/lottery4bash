# 要实现的效果：
# 1.可以读单行也可以读多行
# 2.带一个参数表示抽出几人，不输入代表只抽一人
# 3.过程需要是，抽完一人就从数组剔除他，再抽

#! /usr/bin/env bash
lucky(){
    # 读取每一行到数组
    local arr=();
    while read -a line
    do
        arr+=(${line[@]});
    done;

    # 如果无人抽奖
    if ((${#arr[@]}<=0))
    then
        printf "\e[31m %s\n \e[0m" "无人抽奖！";
        exit;
    fi;

    # 抽奖人数判断
    local num=1;
    if [ ! $1 ]
    then
        num=1;
    elif (($1<=0))
    then
        printf "\e[31m %s\n \e[0m" "获奖人数应大于0！";
        exit;
    elif (($1>${#arr[@]}))
    then
        printf "\e[31m %s\n \e[0m" "获奖人数应小于总人数！";
        exit;
    elif (($1>0&&$1<=${#arr[@]}))
    then
        num=$1;
    fi;

    # 外层循环代表抽取 num 次，内层循环代表每次抽到谁
    local i=0;
    local result=();
    while ((i<num))
    do
        # 表示抽取到了数组的第几个
        local count=$(($RANDOM%${#arr[@]}));
        for key in ${!arr[@]}
        do
            if ((count==0))
            then
                result+=(${arr[key]});
                unset arr[key];
                break;
            fi;
            let "count--";
        done;
        let "i++";
    done;

    # 输出结果数组
    printf "\e[32m %s\n \e[0m" "获奖者：${result[*]}";
}

# 函数体执行
lucky $1;
