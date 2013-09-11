---
title: 'date查看系统用时'
layout: post
tags:
    - shell
    - stty
---

### 检查命令运行用时

	#/bin/bash
	start=$(date +%s) 纪元时
	commands; 命令
	statements; 命令

	end=$(date +%s)
	difference=$((end-start))
	echo time is $difference seconds.


这里主要是date的用法，请参考：
>
[date用法](http://www.linuxso.com/command/date.html)






