---
layout: post
title: openwrt编译
tags:
    - openwrt
---

编译环境搭建相关的依赖包请自行google.

###下载源码

    git clone git://git.openwrt.org/openwrt.git
    
###更新
	cd openwrt
	./scripts/feeds update -a //更新软件包
	./scripts/feeds install -a  //安装软件包

###编译
1 配置
	make menuconfig

选择芯片
<span class="image-1200">[![](/media/files/2013/05/openwrt/opw1.jpg)](http://500px.com/photo/29307621)</span>

<span class="image-1200">[![](/media/files/2013/05/openwrt/opw2.jpg)](http://500px.com/photo/29307621)</span>

支持的博通芯

<span class="image-1200">[![](/media/files/2013/05/openwrt/opw3.jpg)](http://500px.com/photo/29307621)</span>

选择软件包

<span class="image-1200">[![](/media/files/2013/05/openwrt/opw4.jpg)](http://500px.com/photo/29307621)</span>


2 make 
