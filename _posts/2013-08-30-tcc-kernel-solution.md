---
layout: post
title: Makefile混合隐含错误
tags:
    - kernel
    - Makefile
---

###Makefile: 混合的隐含和普通规则 错误


今天发现在编译kernel出现一下错误：
>
        Makefile: *** 混合的隐含和普通规则。 停止。
        Makefile: *** mixed implicit and normal rules. Stop.

####这个原因可能是Make工具对低版本内核的Makefile一些旧的规则兼容不好，我们只需要修改对应的Makefile。（编译内核为2.6.28，而系统内核为2.6.43）

####Q1：

Problem 1:
>
        / %/: prepare scripts FORCE
                $(Q)$(MAKE) KBUILD_MODULES=$(if $(CONFIG_MODULES),1) \
                $(build)=$(build-dir)
Solution 1：
>
        /: prepare scripts FORCE
                $(Q)$(MAKE) KBUILD_MODULES=$(if $(CONFIG_MODULES),1) \
                $(build)=$(build-dir)
        %/: prepare scripts FORCE
                $(Q)$(MAKE) KBUILD_MODULES=$(if $(CONFIG_MODULES),1) \
                $(build)=$(build-dir)

####Q2：

Problem 2：
>
        config %config: scripts_basic outputmakefile FORCE
                $(Q)mkdir -p include/linux include/config

                $(Q)$(MAKE) $(build)=scripts/kconfig $@
Solution 1：
>
        config: scripts_basic outputmakefile FORCE
                $(Q)mkdir -p include/linux include/config
                $(Q)$(MAKE) $(build)=scripts/kconfig $@
        %config: scripts_basic outputmakefile FORCE
                $(Q)mkdir -p include/linux include/config
                $(Q)$(MAKE) $(build)=scripts/kconfig $@

