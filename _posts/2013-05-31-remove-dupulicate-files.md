---
layout: post
title: 删除目录中重复的文件
tags:
    - shell
    - remove
    - 脚本
---

###删除重复文件命令脚本

>

     1	#!/bin/bash
     2	
     3	ls -lS|awk 'BEGIN{
     4	getline;getline;
     5	name1=$9;size=$5
     6	}
     7	name2=$9;
     8	if { size==$5 }
     9	{ "md5sum "name1|getline; csum1=$1;
    10	  "md5sum "name2|getline; csum2=$1;
    11	  if (csum1==csum2)
    12	  { print name1;print name2 }
    13	  };
    14	size=$5; name1=name2;
    15	}'|sort -u >duplicate_files
    16	
    17	#ls -lS 安装文件size排序显示，-r表逆序，用awk读取显示列表，$9为第九列，也就是文件名，$5为文件的大小
    18	#PS相同文件的size是相同的，然后比较md5
    19	#最后赋值，sort排序并且去掉重复行号
    20	
    21	cat duplicate_files|xargs -I {} md5sum {}|sort|uniq -w 32|awk 'print{ "^"$2"$" }'|sort -u >duplicate_samples
    22	
    23	#xargs -I {}，md5sum {}对所有的程序，uniq -w字符的长度 ，awk打印$2第二列
    24	echo Removing........
    25	comm duplicate_samples duplicate_files -2 -3 |tee /dev/stderr |xargs rm 
    26	#干掉重复的,保留第一列···
    27	echo Removing successfully!comm duplicate_files duplicate_sample  -2 -3 | tee /dev/stderr | xargs 
    28	rm
