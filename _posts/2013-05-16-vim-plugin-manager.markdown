---
title: 'vundle vim plugin管理'
layout: post
tags:
    - vim
    - vundle
---

### vundle

    git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

###编辑vimrc，激活vundle

    set nocompatible               " be iMproved
    filetype off                   " required!

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required!
    Bundle 'gmarik/vundle'

    " My Bundles here:
    "
    " original repos on github
    " Bundle 'tpope/vim-fugitive'
    " Bundle 'Lokaltog/vim-easymotion'
    " Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Bundle 'tpope/vim-rails.git'
    " vim-scripts repos
    " Bundle 'L9'
    " Bundle 'FuzzyFinder'
    " non github repos
    " Bundle 'git://git.wincent.com/command-t.git'
    " ...

    Bundle 'molokai'
    Bundle 'genutils'
    Bundle 'The-NERD-tree'
    Bundle 'bufexplorer.zip'
    Bundle 'lookupfile'
    Bundle 'snipMate'
    Bundle 'snipmate-snippets'
    Bundle 'taglist-plus'
    Bundle 'fugitive.vim'
    Bundle 'jslint.vim'
    Bundle 'ZenCoding.vim'

    filetype plugin indent on     " required!
    "
    " Brief help
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
    "
    " see :h vundle for more details or wiki for FAQ
    " NOTE: comments after Bundle command are not allowed.."""""""""""""""""""""""""""

###使用Bundle命令管理插件o
[请查阅这里,beiyuu的大作，必须膜拜](http://beiyuu.com/git-vim-tutorial/)
