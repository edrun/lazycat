---
layout: post
title: 命令行操作回放和广播
tags:
    - shell
    - 回放
---


发现一个不错的东西：

>
    script -t 2> timing.log -a outpu.session
    type command;
    ---
    exit
>
scprit命令可以录制命令行操纵的过程。在做演示是非常的方便哦。

-t选项目的在于将时序的数据导入timing.log中，将stderr输入到timing.log中，
output用来存放操作的命令。

恢复

>
    scriptreplay timming.log output.session

这样就可以回放刚才我们的操作了。

还可以发布广播哦，对于多用户的系统比较有用：

term1上：
>
    mkfifo scriptfifo

term2上：
>
    cat scriptfifo

返回term1:
>
    script - scriptfifo
    type commands;

>

这样在term2上就可以看到term1的所有动作了，term3,term4也同样处理哦。
需要注意的是：
scripfifo 的目录要对，不同的目录需要相对或绝对路径。








