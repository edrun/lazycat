---
layout:  post
title:  find用法
tags:
    - shell
    - find
---

find 用法

>
    1. find . -name "lls" -print
    2. find . \( -name "*hello" -o -name "hi" \）  -print //hello和hi，寻找多个匹配
    3. find . ! -name "jj" -print 过滤掉jj文件或者目录
    4. find . -type f 文件
    5. find . -type d 目录
    6. find . -maxpath 1 -type f .. maxdepth与mindepth设定目录层次
    7. find . -regex "\(\.py\|\.sh\)$"利用正则表达式
    8. find . -path 包含路径

根据时间来搜索：

access time
modify time 
content time 
>
    find . -maxdepth 1 -type f -atime 7  -print //7天内改变的-amin为分钟
    find . -maxdepth 1 -type f -newer file.txt -print //时间比file.txt还早的文件

根据文件的大小来寻找：
>
    find . -maxdepth 1 -type f -size +2K 大于2K的文件
    find . ... -size -2K 小于2K的文件
    find . ... -size 2K 等于2k的文件
执行
>
    find . -maxdepth 1 -type f -name "*.swp" -print -delete ；当前目录找到*.swp,打印，然后删除

根据权限来搜索：
>
    find . -type f ! -perm 644 -print //权限不为644的文件
    find -type f -name "*.ppt" -perm 644 -print//权限为644的ppt文件

根据用户来搜索：
>
    find . -type d hl -print 属性hl的目录
    find . -type f -user hl chown root {} \;改变hl未见属性为root拥有
exec来执行find命令
>
    find . -type f -user hl -name "*.c" -exec chown root {} \;
    find . -type f -mtime +10 -name "*.txt" -exec cp {} old \;
    find . -type f -name "*.txt" -exec printf "%s\n" ｛｝\;>>ll.txt//打印收到的文件名称。


