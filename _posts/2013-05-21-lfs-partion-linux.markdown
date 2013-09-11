---
layout: post
title: partion detail
tags:
    - linux
    - partion
---

###原文（摘自lfsdailybuild0519）

Part1.

Now that a blank partition has been set up, the file system can be created. LFS can use any file system recognized by the Linux kernel, but the most common types are ext3 and ext4. The choice of file system can be complex and depends on the characteristics of the files and the size of the partition. For example:

ext2
is suitable for small partitions that are updated infrequently such as /boot.
ext3
is an upgrade to ext2 that includes a journal to help recover the partition's status in the case of an unclean shutdown. It is commonly used as a general purpose file system.
ext4
is the latest version of the ext file system family of partition types. It provides several new capabilties including nano-second timestamps, creation and use of very large files (16 TB), and speed improvements.
Other file sytems, including FAT32, NTFS, ReiserFS, JFS, and XFS are useful for specialized purposes. More information about these file systems can be found at http://en.wikipedia.org/wiki/Comparison_of_file_systems.

Part2.

There are several other partitions that are not required, but should be considered when designing a disk layout. The following list is not comprehensive, but is meant as a guide.

/boot – Highly recommended. Use this partition to store kernels and other booting information. To minimize potential boot problems with larger disks, make this the first physical partition on your first disk drive. A partition size of 100 megabytes is quite adequate.

/home – Highly recommended. Share your home directory and user customization across multiple distributions or LFS builds. The size is generally fairly large and depends on available disk space.

/usr – A separate /usr partition is generally used if providing a server for a thin client or diskless workstation. It is normally not needed for LFS. A size of five gigabytes will handle most installations.

/opt – This directory is most useful for BLFS where multiple installations of large packages like Gnome or KDE can be installed without embedding the files in the /usr hierarchy. If used, 5 to 10 gigabytes is generally adequate.

/tmp – A separate /tmp directory is rare, but useful if configuring a thin client. This partition, if used, will usually not need to exceed a couple of gigabytes.

/usr/src – This partition is very useful for providing a location to store BLFS source files and share them across LFS builds. It can also be used as a location for building BLFS packages. A reasonably large partition of 30-50 gigabytes allows plenty of room.

Any separate partition that you want automatically mounted upon boot needs to be specified in the /etc/fstab. Details about how to specify partitions will be discussed in Section 8.2, “Creating the /etc/fstab File”.



###译文

第一部分

现在已经建好了一个空白分区，文件系统可以被创建了。LFS可以使用任何被Linux内核识别的文件系统，但最常见的类型为ext3和ext4。
文件系统的类型选择依据文件的类型和分区的大小来选择。例如：

ext2 就非常适用于经常更新的的分区，诸如/boot。

ext3 是对ext2的升级，它可以通过记录日志来帮助恢复非正常关机的分区状态。它通常被当作通用的文件系统。

ext4 是ext家族分区类型中的最新版本。它带来了一些新的能力，毫秒级的时间戳，可以创建和使用16G的大文件，同时提升了文件读取速度。

其他的文件系统包括fat32,ntfs,JFS和Jsf等对特殊需求非常有用。更多关于这些文件系统的信息，可以在这里找到：
[http://en.wikipedia.org/wiki/Comparison_of_file_systems.](http://en.wikipedia.org/wiki/Comparison_of_file_systems)

第二部分


还有一些分区没有列出来，但在设计分区布局时应该将他们考虑其中。下面的列表并不全面，仅作为参考。

* /boot 强烈推荐。使用这个分区存放内核和其他启动信息。为了最大限度地减少潜在的更大的磁盘引导问题，应该将它建立在第一个驱动器的一个物理分区上。

* /home 强烈推荐。共享你家目录、用户定制的发行版或者lfs构建的版本。分区的大小通常都很大，取决于磁盘的可用空间。

* /usr 一个独立的/usr分区通常在为瘦客户端或者无盘工作站提供服务是被使用。

* /opt 这个目录对于避免将大文件诸如kde或者gnome的安装在/usr目录层级BLFS来说是最有用。如果使用它的话，一般来说5-10G就够用了。

* /tmp 单独的/tmp分区是很少的，但对于瘦客户端来说却很有用。如果使用它的话，一般不超过2G。

* /usr/src 对于存放blfs源码和LFS构建交叉共享非常有用。如果空间允许的话30-50G是比较合理的。

如果想让任何一个分区开机启动可以通过编辑/etc/fstab配置文件来实现。关于如何定义分区的信息我们将今后详细讨论。


