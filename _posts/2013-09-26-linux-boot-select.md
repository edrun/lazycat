---
layout: post
title: Linux启动
tags:
    - 启动
    - linux
---

操作系统接管硬件之后：
1 加载/boot 目录内核
2 执行/etc/init，确定运行级别
3 由/etc/init/执行/etc/init.d/目录下脚本，开机启动程序
4 用户登录：

a 命令行登录方式
getty 提供用户输入信息，用户名和密码
login 载入输入信息与/etc/passwd核对用户，如用户信息无误，读取该用户指定的shell，然后启动这个shell。

b ssh登录方式
由ssh 和sshd取代getty 和login，然后启动shell

c 图形界面登录
init进程调用显示管理器，Gnome图形界面对应的显示管理器为gdm（GNOME Display Manager），然后用户输入用户名和密码。
如果密码正确，就读取/etc/gdm3/Xsession，启动用户的会话。

5 进入 login shell
（1）命令行登录：首先读入 /etc/profile，这是对所有用户都有效的配置；然后依次寻找下面三个文件，这是针对当前用户的配置。
　　~/.bash_profile
　　~/.bash_login
　　~/.profile　　
需要注意的是，这三个文件只要有一个存在，就不再读入后面的文件了。比如，要是 ~/.bash_profile 存在，就不会再读入后面两个文件了。
（2）ssh登录：与第一种情况完全相同。
（3）图形界面登录：只加载 /etc/profile 和 ~/.profile。也就是说，~/.bash_profile 不管有没有，都不会运行。

6 non-login shell 
non-login shell的重要性，不仅在于它是用户最常接触的那个shell，还在于它会读入用户自己的bash配置文件 ~/.bashrc。大多数时候，我们对于bash的定制，都是写在这个文件里面的。
