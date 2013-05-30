---
layout: post
title: ad.树莓派课程1.为你的树莓派准备一张sd卡
comments: yes
categories:
- raspberry
tags:
- raspberry-essons
---

[原文](http://learn.adafruit.com/adafruit-raspberry-pi-lesson-1-preparing-and-sd-card-for-your-raspberry-pi)

###概述

当你买树莓派的时候，有可能没有SD卡。
SD卡非常重要，它用于存放你的文件和程序。

<span class="image-1200">[![](/lazycat/05/raspberry/rasp-1.jpg)](http://500px.com/photo/29307621)</span>
假如你的树莓派已经有了sd卡，并且已经装上了开源系统。这里建议更新到最新版本，因为新系统性能在不断提升，bug也不断的的得到修复。


如果你的树莓派没有配有SD卡，那么你至少得准备一张4G以上SD卡，当然你需要空间就买更大的。

这篇教程将为你展示如何在树莓派上创建SD卡。


###你将用到哪些

为了使电脑能够使用SD卡，你需要：

一台带有内置SD读卡器的正常电脑，或者一个USB读卡器。这个教程针对windows和Mac系统.你可以在ad fruit商店买到可擦写的微型内存卡。
<span class="image-1200">[![](/lazycat/05/raspberry/rasp-2.jpg)](http://500px.com/photo/29307621)</span>

内存卡至少需要4G的容量。你可以在ad商店上挑选一块合适的内存卡，这些都是经过测试能够保证正常工作的。

<span class="image-1200">[![](/lazycat/05/raspberry/rasp-3.jpg)](http://500px.com/photo/29307621)</span>


###下载系统镜像

你必须从网络上下载操作系统，以便于安装到SD卡上。他们通常是.img类型的系统镜像压缩文件。无论你下载什么样的镜像文件
，实际上，它们的安装过程都是一样的。

###选择一个操作系统

有很多的操作系统可以在派上工作，如果你是初学者，那么选择一个LINUX发行版不用考虑其他的。假如你是一个高级用户，那么
你就没有读这篇教程的必要了。

###选择你的发行版

当你决定安装LINUX发行版之后，并不意味着大功告成。你现在必须确定你要安装的LINUX版本或者发行版。作为一个开源的操作系统，
任何人都可以添加和修改系统的内容，并重新打包做为一个新的版本供他人使用。这就是最常用的派系统raspberry bian系统存在的原因。
"debian"发行版针对派定制了一些有用的工具，如python编辑器idle,编程学习模拟器scratch等。Adafruit针对PI做了修改，使之能够
很容易的使用GPIO接口，连接DIY电子产品。

以下两个系统任何一个都适用于adfruit网站的教程，所以我们推荐你挑选其中一个：

.   raspbian 树莓派推荐的系统，带树莓派标准的默认配置，几乎所有的树莓派都会安装这个系统，[下载地址](http://www.raspberrypi.org/downloads)

.   Occidentalis 这是adafruit针对硬件支持修改的版本。尤其针对懂得如何连接传感器、LED显示器、伺服器等等到他们树莓派的用户使用，
[下载地址](http://learn.adafruit.com/adafruit-raspberry-pi-educational-linux-distro/)


