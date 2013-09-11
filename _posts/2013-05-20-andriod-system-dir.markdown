---
layout: post
title: andriod 目录结构
tags:
    - andriod
---

###目录概览
>
    shell@android:/ $ ls -al
    drwxr-xr-x root     root              acct
    drwxrwx--- system   cache            cache
    dr-x------ root     root              config
    lrwxrwxrwx root     root              d -> /sys/kernel/debug
    drwxrwx--x system   system           data
    -rw-r--r-- root     root              default.prop
    drwxr-xr-x root     root              dev
    lrwxrwxrwx root     root              etc -> /system/etc
    -rw-r--r-- root     root              factory.fstab
    -rwxr-x--- root     root              init
    -rwxr-x--- root     root              init.factory.rc
    -rwxr-x--- root     root              init.goldfish.rc
    -rwxr-x--- root     root              init.rc
    -rwxr-x--- root     root              init.tcc8920st.fs.rc
    -rwxr-x--- root     root              init.tcc8920st.rc
    -rwxr-x--- root     root              init.tcc8920st.usb.rc
    -rwxr-x--- root     root              init.tcc8920st.wifi.rc
    drwxr-xr-x root     root              lib
    drwxrwxr-x root     system            mnt
    dr-xr-xr-x root     root              proc
    drwxr-xr-x root     root              res
    drwx------ root     root              root
    drwxr-x--- root     root              sbin
    lrwxrwxrwx root     root              sdcard -> /mnt/sdcard
    drwxr-xr-x root     root              sys
    drwxr-xr-x root     root              system
    -rw-r--r-- root     root              ueventd.goldfish.rc
    -rw-r--r-- root     root              ueventd.rc
    -rw-r--r-- root     root              ueventd.tcc8920st.rc
    lrwxrwxrwx root     root              vendor -> /system/vendor


###目录

以下是andriod根目录下文件目录说明：
>
    1、mnt            挂载点目录
    2、etc             统配置文件目录
    3、system andriod系统配置文件
    4、sys系统内核
    5、root超级用户家目录
    6、sbin系config管理命令
    7、proc虚拟文件系统，正在运行的进程
    8、data用户应用目录，各种应用信息
    9、dev系统硬件信息
    10、lib系统底层库文件
    11、sdcard
    12、res注册信息
    13、acct
    14、cache
    15、config      
    16、d


###磁盘使用情况
>
    1|shell@android:/ $ df
    Filesystem             Size   Used   Free   Blksize
    /dev                   176M    32K   176M   4096
    /mnt/asec              176M     0K   176M   4096
    /mnt/obb               176M     0K   176M   4096
    /system                295M   208M    86M   4096
    /data                  984M    93M   890M   4096
    /cache                 147M     4M   143M   4096
    /mnt/sdcard              1G    12M     1G   16384


###重要的目录

>
    lrwxrwxrwx root     root              sdcard -> /mnt/sdcard
    mnt
    1|shell@android:/ $ ls -l /mnt
    drwxr-xr-x root     system            2012-01-26 10:30 asec 
    d--------- system   system            2012-01-26 10:30 ext_sd 拓展卡
    d--------- system   system            2012-01-26 10:30 nfs    网络文件
    drwxr-xr-x root     system            2012-01-26 10:30 obb  
    d---rwxr-x system   sdcard_rw          1970-01-01 08:00 sdcard sd卡
    drwx------ root     root              2012-01-26 10:30 secure
                        d--------- system   system            2012-01-26 10:30 usb_sda1 USB

###etc系统配置文件
>
    lrwxrwxrwx root     root              etc -> /system/etc
                        
由此可以看出，根目录下的系统配置文件是andriod系统，系统配置的一个软连接。
具体的etc配置目录描述见下文。

                        
### sys:Linux 内核文件

>
    130|shell@android:/ $ ls -l sys/                                               
    drwxr-xr-x root     root              2013-05-20 16:37 block 块设备  
    drwxr-xr-x root     root              2012-01-26 10:30 bus 系统总线
    drwxr-xr-x root     root              2013-05-20 16:04 class
    drwxr-xr-x root     root              2013-05-20 16:37 dev 设备驱动
    drwxr-xr-x root     root              2012-01-26 10:30 devices 
    drwxr-xr-x root     root              2013-05-20 16:37 firmware 固件
    drwxr-xr-x root     root              2012-01-26 10:30 fs 文件系统
    drwxr-xr-x root     root              2012-01-26 10:30 kernel 内核
    drwxr-xr-x root     root              2012-01-26 10:30 module 模块
    drwxr-xr-x root     root              2012-01-26 10:30 power  电源管理
                         

＊block 块设备

>
    lrwxrwxrwx root     root              loop0 -> ../devices/virtual/block/loop0
    lrwxrwxrwx root     root              loop1 -> ../devices/virtual/block/loop1
    lrwxrwxrwx root     root              loop2 -> ../devices/virtual/block/loop2
    lrwxrwxrwx root     root              loop3 -> ../devices/virtual/block/loop3
    lrwxrwxrwx root     root              loop4 -> ../devices/virtual/block/loop4
    lrwxrwxrwx root     root              loop5 -> ../devices/virtual/block/loop5
    lrwxrwxrwx root     root              loop6 -> ../devices/virtual/block/loop6
    lrwxrwxrwx root     root              loop7 -> ../devices/virtual/block/loop7
    lrwxrwxrwx root     root              ndda -> ../devices/virtual/block/ndda


###system:Andriod系统文
>
    shell@android:/system $ ls
                         app
                         bcm4330.hcd
                         bin
                         build.prop
                         etc
                         fonts
                         framework
                         key_3000000.psr
                         key_921600.psr
                         lib
                         media
                         tts
                         usr
                         vendor
                         wifi
                         xbin

### system 目录下面的主要文件目录

>
                         1、usr            用户文件夹，包含共享、键盘布局、时间区域文件等
                         2、app            常规下载的应用程序，这些 apk 包都是受保护的哦
                         3、lib            系统底层库，如平台运行时库等
                         4、etc            系统的配置文件，比如APN接入点设置等核心配置等
                         5、framework    Android 系统平台核心 framework 的文件
                         6、build.prop    Android 系统属性配置文件
                         7、xbin            常用开发工具，比如 tcpdump/sqlite3 等
                         8、bin            系统工具，比如 ps/cp/pm 等



###脚本和配置文件

>
                         shell@android:/ $ ls -l *rc                                                    
                         -rwxr-x--- root     root        14259 1970-01-01 08:00 init.factory.rc
                         -rwxr-x--- root     root         2344 1970-01-01 08:00 init.goldfish.rc
                         -rwxr-x--- root     root        17648 1970-01-01 08:00 init.rc
                         -rwxr-x--- root     root          574 1970-01-01 08:00 init.tcc8920st.fs.rc
                         -rwxr-x--- root     root         4869 1970-01-01 08:00 init.tcc8920st.rc
                         -rwxr-x--- root     root         3178 1970-01-01 08:00 init.tcc8920st.usb.rc
                         -rwxr-x--- root     root         2437 1970-01-01 08:00 init.tcc8920st.wifi.rc
                         -rw-r--r-- root     root          272 1970-01-01 08:00 ueventd.goldfish.rc
                         -rw-r--r-- root     root         3825 1970-01-01 08:00 ueventd.rc
                         -rw-r--r-- root     root         1862 1970-01-01 08:00 ueventd.tcc8920st.rc

###重要脚本功能介绍
   
   >
                         1、init.rc            启动脚本
                         2、default.prop        系统属性配置文件

