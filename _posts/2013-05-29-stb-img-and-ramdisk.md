---
layout: post
title: andriod机顶盒之：boot.img,system.img,recovery.img
tags:
    - andriod
---

###boot.img

工具：unpackbootimg,packbootimg

解包：
    
    ./unpackbootimg -i boot.img
    gunzip -c boot.img-ramdisk.gz|cpio -i

###recovery.img

工具：同上

###system.img

工具：sim2img|unyaff|mkfs2yaff

这里，unyaff解不了，可能12.04.2LTS编译器的问题。故而用sim2img改之：

步骤：

1.  ./simg2img system.img outputsystem.img

2.  sudo mount –o loop outputsystem.img /mnt

3.  cp –r /mnt/* ~/android/sytem/

工具包[点我下载](http://pan.baidu.com/share/link?shareid=451179&uk=1578004108)
