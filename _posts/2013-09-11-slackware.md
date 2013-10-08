---
layout: post
title: slackware
tags:
	- code
	- shell
---
>

	BASH：

	1、交互式的登录shell （bash –il xxx.sh）
	载入的信息：
	/etc/profile
	~/.bash_profile（ ->  ~/.bashrc  ->  /etc/bashrc）
	~/.bash_login
	~/.profile

	2、非交互式的登录shell （bash –l xxx.sh）
	载入的信息：
	/etc/profile
	~/.bash_profile （ ->  ~/.bashrc  ->  /etc/bashrc）
	~/.bash_login
	~/.profile
	$BASH_ENV

	3、交互式的非登录shell （bash –i xxx.sh）
	载入的信息：
	~/.bashrc （ ->  /etc/bashrc）

	4、非交互式的非登录shell （bash xxx.sh）
	载入的信息：
	$BASH_ENV


	SH：

	1、交互式的登录shell
	载入的信息：
	/etc/profile
	~/.profile

	2、非交互式的登录shell
	载入的信息：
	/etc/profile
	~/.profile

	3、交互式的非登录shell
	载入的信息：
	$ENV

	4、非交互式的非登录shell
	载入的信息：
	nothing