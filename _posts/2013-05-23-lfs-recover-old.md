---
layout: post
title: lfs恢复之前的工作状态
tags:
    - lfs
    - 恢复
---

由于没有给虚拟机打快照，再次开始时，得重新恢复。
由于新加的盘没有mount，所以remount，之后修改
/etc/fstab
>

    cat>>/etc/fstab<<"EOF"
    输入：
    >/dev/sdb  /mnt/lfs  ext4  defaults  0  2
    >EOF
    mount /dev/sdb /mnt/lfs
    cat>>~/.bash_profile<<"EOF"
    >export LFS=/mnt/lfs
    >"EOF"
    chmod -v a+wt $LFS/source
    chown -v lfs $LFS/source
    chown -v lfs $LFS/tools
    ls -al /tools 查了一下链接还在，ok
    su - lfs
    输入密码即可进入。mark.



