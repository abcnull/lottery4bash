# Ҫʵ�ֵ�Ч����
# 1.���Զ�����Ҳ���Զ�����
# 2.��һ��������ʾ������ˣ����������ֻ��һ��
# 3.������Ҫ�ǣ�����һ�˾ʹ������޳������ٳ�

#! /usr/bin/env bash
lucky(){
    # ��ȡÿһ�е�����
    local arr=();
    while read -a line
    do
        arr+=(${line[@]});
    done;

    # ������˳齱
    if ((${#arr[@]}<=0))
    then
        printf "\e[31m %s\n \e[0m" "���˳齱��";
        exit;
    fi;

    # �齱�����ж�
    local num=1;
    if [ ! $1 ]
    then
        num=1;
    elif (($1<=0))
    then
        printf "\e[31m %s\n \e[0m" "������Ӧ����0��";
        exit;
    elif (($1>${#arr[@]}))
    then
        printf "\e[31m %s\n \e[0m" "������ӦС����������";
        exit;
    elif (($1>0&&$1<=${#arr[@]}))
    then
        num=$1;
    fi;

    # ���ѭ�������ȡ num �Σ��ڲ�ѭ������ÿ�γ鵽˭
    local i=0;
    local result=();
    while ((i<num))
    do
        # ��ʾ��ȡ��������ĵڼ���
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

    # ����������
    printf "\e[32m %s\n \e[0m" "���ߣ�${result[*]}";
}

# ������ִ��
lucky $1;
