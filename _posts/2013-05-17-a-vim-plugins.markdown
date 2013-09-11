---
title: 'tmux使用与配置'
layout: post
tags:
    - tmux
    - screen
---

### tmux下载
[tmux download](http://sourceforge.net/projects/tmux/)

> tmux is a terminal multiplexer, it enables a number of terminals (or windows) to be accessed and controlled from a single terminal. 
tmux is intended to be a simple, modern, BSD-licensed alternative to programs such as GNU screen.)

> tmux 是一个终端复用器，它能够通过一个终端控制和进入一系列不同的窗口或者终端。
tmux目的在于构造一个简单、现代且符合BSD标准类似gnu screen的编程方式。

###用法

需要去学会复制粘帖 

    ctrl+b + [
    tmux #开启tmux
    C-b " 分割出来一个窗口
    C-b % 分割出来一个窗口
    C-b (方向键)
    C-b x 关闭当前光标处的小窗口
    C-b t 钟表
    C-b d 临时断开会话 断开以后,还可以连上的哟:), 返回主 shell ， tmux 依旧在后台运行，里面的命令也保持运行状态
    tmux attach 恢复会话
    tmux ls #显示已有tmux列表（C-b s）
    ttmux attach-session -t 数字 #选择tmux
    C-b c 创建一个新的窗口
    C-b n 切换到下一个窗口
    C-b p 切换到上一个窗口
    C-b l 最后一个窗口,和上一个窗口的概念不一样哟,谁试谁知道,最后使用的窗口
    c-b w 通过上下键选择当前窗口中打开的会话
    C-b 数字 直接跳到你按的数字所在的窗口
    C-b & 退出当前窗口
    C-b o 在小窗口中切换
    C-b ! 关闭所有小窗口? 吧当前窗口变为新窗口
    C-b pageup/pagedow"
    C-b s 以菜单方式显示和选择会话
    C-b w 以菜单方式显示和选择窗口
    C-b C-方向键 调整分隔窗口大小
    C-b 空格 采用下一个内置布局
    C-b C-o 调换窗口位置
    C-b ? 显示快捷键帮助 , q退出
    C-b q // 显示分隔窗口的编号
    C-b t //显示时钟
    C-b ,　给当前窗口改名
    C-b [ 复制(空格开始)
    C-b ] 粘贴（回车结束）

### 配置文件

[endot提供的配置原文](http://endot.org/2011/12/06/my-tmux-configuration/)

译文

- 我的Tmux配置

>我作为screen用户已有相当长的时间了。然而，在不久之前，我发现下一代终端复用器--tmux.
它不仅能在google上轻易找到，它还具备丰富且便捷的配置语言。

>我已经想到一个很独特的tmux配置，所以我想分享它。

- 背景

>本来，我只是用远程服务器上的tmux配置多个窗口。这很容易为新的远程服务器创建窗口，但
我必须为每一个远程主机打开一个终端标签，并保持他们打开。我老早就希望能够通过相同的方
式重新连接我的标签，以便能够连接独立服务器上的窗口。我拟定在mac本地运行tmux，但每
个新的窗口需要一个新的连接，并且他们不能被逻辑分组。

>所以我在本地和远程运行tmux.

- 嵌套tmux

>我用下面三个配置管理嵌套tmux.
1. [.tmux.shared ](https://github.com/justone/dotfiles/blob/personal/.tmux.shared) 文件
包含我的主机和远程会话共享的绑定和配置。
2. [.tmux.master](https://github.com/justone/dotfiles/blob/personal/.tmux.master) 包含了我本地会话的特别配置。
3. [.tmux.conf](https://github.com/justone/dotfiles/blob/personal/.tmux.conf) 包含了
远程会话的特别配置


- 共享配置

注意：
（未完待续）









