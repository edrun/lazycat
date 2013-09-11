---
layout: post
title: tar error
tags:
    - lfs
    - tools
---

error details
>
	lfs:/sources$tar -xvf binutils-2.23.2.tar.bz2 
	tar (child): cannot run bzip2: Too many levels of symbolic links
	tar (child): trying lbzip2
	tar (child): lbzip2: Cannot exec: Too many levels of symbolic links
	tar (child): Error is not recoverable: exiting now
	tar: Child returned status 2
	tar: Error is not recoverable: exiting now

solutions

Firstly,
>
	rm -rf $LFS/tools
	rm -rf /tools
	mdkir -pv $LFS/tools
	ln -sv $LFS/tools /

Secondly,
>
	chown -v lfs $LFS/tools

Finally,
>	
	su - lfs
	cd $LFS/source
	tar xxx
it works!!!


