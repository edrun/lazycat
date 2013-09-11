---
layout: post
title: tmux配置
tags:
    - tmux配置
---

###技巧：先同时按下C-a，然后按绑定的快捷键

	#设置PREFIX为Ctrl-a   
	set -g prefix C-a   
	#解除Ctrl-b与PREFIX的对应关系   
	unbind C-b   
	#copy-mode将快捷键设置为vi模式   
	setw -g mode-keys vi   
	#将r键设置为加载配置文件，并显示"reloaded!"信息   
	bind r source-file ~/.tmux.conf \; display "Reloaded!"  
	#设置终端颜色为256色   
	set -g default-terminal "screen-256color"  
	#开启status-bar uft-8支持   
	set -g status-utf8 on   
	#设置pan前景色   
	set -g pane-border-fg green   
	#设置pane背景色   
	set -g pane-border-bg black   
	#设置活跃pane前景色   
	set -g pane-active-border-fg white   
	#设置活跃pane背景色   
	set -g pane-active-border-bg yellow   
	#设置消息前景色   
	set -g message-fg white   
	#设置消息背景色   
	set -g message-bg black   
	#设置消息高亮显示   
	set -g message-attr bright   
	#设置status-bar颜色   
	set -g status-fg white   
	set -g status-bg black   
	#设置窗口列表颜色   
	setw -g window-status-fg cyan   
	setw -g window-status-bg default   
	setw -g window-status-attr dim   
	#设置当前窗口在status bar中的颜色   
	setw -g window-status-current-fg white   
	setw -g window-status-current-bg red   
	setw -g window-status-current-attr bright   
	#设置status bar格式   
	set -g status-left-length 40  
	set -g status-left "#[fg=green]Session: #S #[fg=yellow]#I #[fg=cyan]#P"  
	set -g status-right "#[fg=cyan]%d %b %R"  
	set -g status-interval 60  
	set -g status-justify centre   
	#开启window事件提示   
	setw -g monitor-activity on   
	set -g visual-activity on  


	bind k selectp -U # 选择上窗格
	bind j selectp -D # 选择下窗格
	bind h selectp -L # 选择左窗格
	bind l selectp -R # 选择右窗格

	#改变窗口大小
	bind-key J resize-pane -D 10
	bind-key K resize-pane -U 10
	bind-key H resize-pane -L 10
	bind-key L resize-pane -R 10

	bind ^u swapp -U # 与上窗格交换 Ctrl-u
	bind ^d swapp -D # 与下窗格交换 Ctrl-d

	#当 tmux 启动时，可以默认启动一些应用：

	#new -s work  # 新建名为 work 的会话，并启动 mutt
	#neww rtorrent # 启动 rtorrent
	#neww vim # 启动 vim
	#neww zsh
	#selectw -t 3 # 默认选择标号为 3 的窗口

<span class="image-1200">[![](/media/files/2013/05/tmux.jpg)](http://500px.com/photo/29307621)</span>
