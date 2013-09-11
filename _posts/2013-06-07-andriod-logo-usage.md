---
layout: post
title: andriod-logo 制作
tags:
    - andriod
---

###解包

1,boot-unpack

	$mkdir -v boot
	$unpacking -i boot.img -o boot
这一步将会得到：boot.img-ramdisk.gz

2,ramdisk-unpack

	$mkdir ramdisk
	$cd ramdisk
	$gzip -dc ../boot.img-ramdisk.gz|cpio -i

3,文件修改

	$cd ramdisk|ls -al
	drwxrwxr-x 10 hl hl   4096 Jun  7 09:27 ./
	drwxrwxrwx  3 hl hl   4096 Jun  7 09:26 ../
	drwxrwx--x  2 hl hl   4096 Jun  7 09:27 data/
	-rw-r--r--  1 hl hl    129 Jun  7 09:27 default.prop
	drwxr-xr-x  2 hl hl   4096 Jun  7 09:27 dev/
	-rw-r--r--  1 hl hl    563 Jun  7 09:27 factory.fstab
	-rwxr-x---  1 hl hl  98736 Jun  7 09:27 init*
	-rwxr-x---  1 hl hl  14259 Jun  7 09:27 init.factory.rc*
	-rwxr-x---  1 hl hl   2344 Jun  7 09:27 init.goldfish.rc*
	-rwxr-x---  1 hl hl 395952 Jun  7 09:27 initlogo.rle*
	-rwxr-x---  1 hl hl  17648 Jun  7 09:27 init.rc*
	-rwxr-x---  1 hl hl    574 Jun  7 09:27 init.tcc8920st.fs.rc*
	-rwxr-x---  1 hl hl   4869 Jun  7 09:27 init.tcc8920st.rc*
	-rwxr-x---  1 hl hl   3178 Jun  7 09:27 init.tcc8920st.usb.rc*
	-rwxr-x---  1 hl hl   2437 Jun  7 09:27 init.tcc8920st.wifi.rc*
	drwxr-xr-x  3 hl hl   4096 Jun  7 09:27 lib/
	drwxr-xr-x  2 hl hl   4096 Jun  7 09:27 proc/
	drwxr-xr-x  3 hl hl   4096 Jun  7 09:27 res/
	drwxr-x---  2 hl hl   4096 Jun  7 09:27 sbin/
	drwxr-xr-x  2 hl hl   4096 Jun  7 09:27 sys/
	drwxr-xr-x  2 hl hl   4096 Jun  7 09:27 system/
	-rw-r--r--  1 hl hl    272 Jun  7 09:27 ueventd.goldfish.rc
	-rw-r--r--  1 hl hl   3825 Jun  7 09:27 ueventd.rc
	-rw-r--r--  1 hl hl   1862 Jun  7 09:27 ueventd.tcc8920st.rc

4,initlogo.rle* logo文件

	$convert -depth 8 logo.png rgb:logo.raw
	$to565 -rle < logo.raw > logo.rle
	$.././mkbootfs ./ramdisk | gzip > boot.img-ramdisk.gz

###打包

	$.././mkbootimg --cmdline 'no_console_suspend=1 console=null' --kernel boot.img-zImage --ramdisk boot.img-ramdisk.gz -o boot.img

###重新烧录即可完成
