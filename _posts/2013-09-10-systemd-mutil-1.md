---
layout: post
title: shell特殊字符
tags:
   - code
   - shell
---

###几个特殊字符

	 66 
	 67 for i in /etc/profile.d/*.sh ; do
	 68     if [ -r "$i" ]; then
	 69         if [ "${-#*i}" != "$-" ]; then //${-#*i}删除掉i以及i左边的字符。-表示的是参数变量
	 70             . "$i"
	 71         else
	 72             . "$i" >/dev/null 2>&1 //输出标准输出和错误输出到屏幕上
	 73         fi
	 74     fi
	 75 done


####感谢sf上felix021给的解答。


    himBH每一个字符是一个shell的选项，详情man bash然后搜索 -h -B 等。
    
	"${-#*i}" 这是bash的字符串处理语法：
	${VARNAME#*/}: 从左至右， 删除$VARNAME中第一个/及左边的子串。以此类推。

####另感谢PF君给的example:

	[root@ awktest]# a=himBH     
	[root@ awktest]# i=mBH       
	[root@ITawktest]# echo ${a#*i}
	mBH
	
>
	BASH：

	1、交互式的登录shell （bash –il xxx.sh）
	载入的信息：
	/etc/profile
	~/.bash_profile（ ->  ~/.bashrc  ->  /etc/bashrc）
	~/.bash_login
	~/.profile

	2、非交互式的登录shell （bash –l xxx.sh）
	载入的信息：
	/etc/profile
	~/.bash_profile （ ->  ~/.bashrc  ->  /etc/bashrc）
	~/.bash_login
	~/.profile
	$BASH_ENV

	3、交互式的非登录shell （bash –i xxx.sh）
	载入的信息：
	~/.bashrc （ ->  /etc/bashrc）

	4、非交互式的非登录shell （bash xxx.sh）
	载入的信息：
	$BASH_ENV


	SH：

	1、交互式的登录shell
	载入的信息：
	/etc/profile
	~/.profile

	2、非交互式的登录shell
	载入的信息：
	/etc/profile
	~/.profile

	3、交互式的非登录shell
	载入的信息：
	$ENV

	4、非交互式的非登录shell
	载入的信息：
	nothing
