---
layout: post
title: 3.1.Introduction
tags:
    - lfs
---
Part1. Origin

This chapter includes a list of packages that need to be downloaded in order to build a basic Linux system. The listed version numbers correspond to versions of the software that are known to work, and this book is based on their use. We highly recommend against using newer versions because the build commands for one version may not work with a newer version. The newest package versions may also have problems that require work-arounds. These work-arounds will be developed and stabilized in the development version of the book.

Download locations may not always be accessible. If a download location has changed since this book was published, [Google](http://www.google.com/) provides a useful search engine for most packages. If this search is unsuccessful, try one of the alternative means of downloading discussed at[http://www.linuxfromscratch.org/lfs/packages.html#packages](http://www.linuxfromscratch.org/lfs/packages.html#packages.)

Downloaded packages and patches will need to be stored somewhere that is conveniently available throughout the entire build. A working directory is also required to unpack the sources and build them. $LFS/sources can be used both as the place to store the tarballs and patches and as a working directory. By using this directory, the required elements will be located on the LFS partition and will be available during all stages of the building process.

To create this directory, execute the following command, as user root, before starting the download session:
>
	mkdir -v $LFS/sources

Make this directory writable and sticky. “Sticky” means that even if multiple users have write permission on a directory, only the owner of a file can delete the file within a sticky directory. The following command will enable the write and sticky modes:
>
	chmod -v a+wt $LFS/sources

An easy way to download all of the packages and patches is by using wget-list as an input to wget. For example:
>
	wget -i wget-list -P $LFS/sources

Additionally, starting with LFS-7.0, there is a separate file, md5sums, can be used to verify that all the correct packages are available before proceeding. Place that file in $LFS/sources and run:
>
	pushd $LFS/sources
	md5sum -c md5sums
	popd

译文：
这个章节里包含构建了一个基本的linux系统的文件包下载列表。列出的包版本号对应的软件是能正常工作的，本书也是基于这些软件来写的。我们强烈反对使用更新软件版本，因为针对特定软件的命令不一定适用于新的版本。最近的软件版本同样会产生变更带来的问题。这些发展和变更将在新的Book开发版中看到。

下载地址不一定总是可用的。如果这本书发布之后，软件连接失效，Google这个搜索引擎可以帮你找到绝大多是的软件包。如果搜索不到，可以尝试从讨论站点http://www.linuxfromscratch.org/lfs/packages.html＃下载包替代。

下载好的软件包和补丁应该存放在，以方便整个构建全局的使用。同样的还需要建立一个工作目录来解压和构建。$LFS/sources目录可以同时存放源码包以及补丁，同时也可以当作工作目录。通过使用该目录，可在搭建各个阶段使用位于LFS分区上的资源。

在打开下载会话之前，以root用户身份执行一下命令：
>
	mkdir -v $LFS/sources

使这个目录可以写和增加粘贴位。“粘贴”意味着在多个用户具备访问目录权限时，只有该文件拥有者才可以通过粘贴位删除文件。
>
	chmod -v a+wt $LFS/sources

可以通过使用wget-list作为wget的输入简单下载所有的源码包和补丁。如下：
>
	wget -i wget-list -P $LFS/sources

除此之外，在开始LFS7.0之前，使用md5sums检查所有可用的包是否正确。

>
	md5sum -c md5sums



