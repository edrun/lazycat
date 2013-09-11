---
layout: post
title: 多个git帐号同时登录
tags:
    - ssh
    - git
---

### 什么是ssh?
> SSH是一种网络协议，用于计算机之间的加密通信。
公钥Public Key与私钥Private Key

> SSH需要生成公钥Public Key和私钥Private Key, 常用的是使用RSA算法生成id_rsa.pub和id_rsa。 公钥Public Key(id_rsa.pub)是可以暴露在网络传输上的，是不安全的。而私钥Private Key(id_rsa)是不可暴露的，只能存在客户端本机上。 所以公钥Public Key(id_rsa.pub)的权限是644，而私钥Private Key(id_rsa)的权限只能是600。如果权限不对，SSH会认为公钥Public Key(id_rsa.pub)和私钥Private Key(id_rsa)是不可靠的，就无法正常使用SSH登陆了。

> 同时在服务端会有一个~/.ssh/authorized_keys文件，里面存放了多个客户端的公钥Public Key(id_rsa.pub)，就表示拥有这些Public Key的客户端就可以通过SSH登陆服务端。


### SSH公钥登陆过程

客户端发出公钥登陆的请求(ssh user@host)
服务端返回一段随机字符串
客户端用私钥Private Key(id_rsa)加密这个字符串，再发送回服务端
服务端用~/.ssh/authorized_keys里面存储的公钥Public Key去解密收到的字符串。如果成功，就表明这个客户端是可信的，客户端就可以成功登陆

> 只要多台电脑上的的公钥Public Key(id_rsa.pub)和私钥Private Key(id_rsa)是一样的，对于服务端来说着其实就是同一个客户端。所以可以通过复制公钥Public Key(id_rsa.pub)和私钥Private Key(id_rsa)到多台电脑来实现共享登陆。
> "在同一台电脑登录不同的git帐号时会报错，这是由于ssh默认只认
一个id_rsa.pub

>
	ssh-keygen -t rsa -C 'second@mail.com'
	ssh-add ~/.ssh/id_rsa_second

报错：
> Could not open a connection to your authentication agent.无法连接到ssh agent，可执行ssh-agent bash命令后再执行ssh-add命令。

创建config文件，文件内容如下：
>	
	# Default github user(first@mail.com)
 
	Host github.com
	HostName github.com
	User git
	IdentityFile /home/username/.ssh/id_rsa
 
	# second user(second@mail.com)
 
	Host github-second
	HostName github.com
	User git
	IdentityFile /home/username/.ssh/id_rsa_second
以上内容的目的在于配置私钥对应的服务器。



> Host随意即可，方便自己记忆，后续在添加remote是还需要用到。 配置完成后，在连接非默认帐号的github仓库时，远程库的地址要对应地做一些修改，比如现在添加second帐号下的一个仓库test，则需要这样添加：
>
>
    git remote add test git@github-second:second/test.git #并非原来的git@github.com:second/test.git

这样每次连接都会使用id_rsa_second与服务器进行连接。

另外还有一种更简单的方法，不用设置麻烦的ssh_config https://github.com/blog/642-smart-http-support 用https的方法clone下来，pull/push的时候会自动要求你输入密码 :-)


### 参考

[github多账户使用及多台电脑共用SSH Public/Private Key](http://higrid.net/c-art-github_share_ssh.htm)


