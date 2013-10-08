---
layout: post
title: system启动级别
tags:
    - inittab
    - runlevel
---

###[system 切换进行级别](http://fedoraproject.org/wiki/Systemd/zh-cn)

systemd 使用比 sysvinit 的运行级更为自由的 target 概念作为替代。


第 3 运行级用 multi-user.target 替代。
第 5 运行级用 graphical.target 替代。
runlevel3.target 和 runlevel5.target 分别是指向 multi-user.target 和 graphical.target 的符号链接。

你可以使用下面的命令切换到“运行级 3 ”：

 >
	systemctl isolate multi-user.target (or) systemctl isolate runlevel3.target 


你也可以使用下面的命令切换到“运行级 5 ”：
>
	systemctl isolate graphical.target (or) systemctl isolate runlevel5.target 

####如何改变默认运行级别？

systemd 使用链接来指向默认的运行级别。在创建新的链接前，你可以通过下面命令删除存在的链接：
>
	rm /etc/systemd/system/default.target 

默认切换到运行级 3 ：
>
	ln -sf /lib/systemd/system/multi-user.target /etc/systemd/system/default.target 

默认切换到运行级 5 ：
>
	ln -sf /lib/systemd/system/graphical.target /etc/systemd/system/default.target 

systemd 不使用/etc/inittab 文件。

####查看当下运行级别

runlevel 命令在 systemd 下仍然可以工作。你可以继续使用它，尽管 systemd 使用 'target' 概念(多个的 'target' 可以同时激活)替换了之前系统的 runlevel 。等价的 systemd 命令是
>
	systemctl list-units --type=target 

