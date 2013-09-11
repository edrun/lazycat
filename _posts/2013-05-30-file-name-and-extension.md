---
layout: post
title: 文件名获取与拓展名
tags:
    - shell
---

exam.1

file_jpg="sa.jpg"
name=${sa%.*}
echo $name
显示文件名

exam.2

extension=${sa#*.}
获取拓展名

这连个在获取文件列表的时候会比较有用。

给一个重命名的例子：

>

    #!/bin/bash
    #rename txt file
    count=1;
    for txt in *.txt //设定.txt变量
    do
        newtxt=workdc-$count-${txt##*.} //去掉原来的名称添加新命
        mv "$txt" "$workdc" 2> /dev/null
        if [ $? -eq 0 ]; //上一句是否执行，执行则下一步，否则，done
        then
        echo mv "$txt" to "$newtxt"
        let count++
        fi
    done
