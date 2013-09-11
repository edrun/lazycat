---
layout: post
title: LFS1-binutils 安装
tags:
    - lfs
    - binutils
---

步骤：

1. Fix a couple of syntax errors that prevent the documentation from building with Texinfo-5.1
修复一些语法错误，防止文件从Texinfo-5.1编译。

>
	sed -i -e 's/@colophon/@@colophon/' \
       -e 's/doc@cygnus.com/doc@@cygnus.com/' bfd/doc/bfd.texinfo
sed -i -e "sed 用法" ，替换

注意：bfd/doc/bfd.texinfo 在俺的机器上该把texinfo改成info，否则会报info的错

2. The Binutils documentation recommends building Binutils outside of the source directory in a dedicated build directory:
buinutils文件推荐在源码目录之外建立一个编译目录编译。 

>
	mkdir -v ../binutils-build
	cd ../binutils-build

3. Now prepare Binutils for compilation:
 配置编译选项。

>
../binutils-2.23.2/configure   \
    --prefix=/tools            \
    --with-sysroot=$LFS        \
    --with-lib-path=/tools/lib \
    --target=$LFS_TGT          \
    --disable-nls              \
    --disable-werror


The meaning of the configure options:

--prefix=/tools

This tells the configure script to prepare to install the Binutils programs in the /tools directory.

--with-sysroot=$LFS

For cross compilation, this tells the build system to look in $LFS for the target system libraries as needed.


--with-lib-path=/tools/lib
This specifies which library path the linker should be configured to use.

--target=$LFS_TGT
Because the machine description in the LFS_TGT variable is slightly different than the value returned by the config.guess script, this switch will tell the configure script to adjust Binutil's build system for building a cross linker.

--disable-nls
This disables internationalization as i18n is not needed for the temporary tools.


--disable-werror
This prevents the build from stopping in the event that there are warnings from the host's compiler.

配置选项的意义

1. --prefix=/tools 告诉配置脚本将binutils安装在/tools目录

2. --with-syschroot=$LFS 告诉构建系统在$LFS寻找目标系统所需要的库文件

3. --with-lib-path=/tools/lib 指定连接器使用的库路径

4. --target=$LFS_TGT 配置机器名，注意gun与gnu别写错了

5. --disable-nls 禁止国际化语言支持，因为i18n是没必要的临时工具

6. --disable-werror 这可以防止因为主机传来的警告使编译停止

4. make 

5. test

Compilation is now complete. Ordinarily we would now run the test suite, but at this early stage the test suite framework (Tcl, Expect, and DejaGNU) is not yet in place. The benefits of running the tests at this point are minimal since the programs from this first pass will soon be replaced by those from the second.

编译已经完成。正常来讲我们需要测试，但这一步为时尚早，因为测试框架（tcl,expect,dejaGUN）都还没有安装好。在这里测试没多大意义，因为这些软件很快被下一步编译得到的软件取代。

6. build on x86_64

If building on x86_64, create a symlink to ensure the sanity of the toolchain:
如果在x86_64未机器上编译，创建如下连接以保证它能连接到工具链
>
	case $(uname -m) in
	  x86_64) mkdir -v /tools/lib && ln -sv lib /tools/lib64 ;;
	esac


Binutils安装文件列表

Installed programs:
安装的程序

addr2line, ar, as, c++filt, elfedit, gprof, ld, ld.bfd, nm, objcopy, objdump, ranlib, readelf, size, strings, and strip
Installed libraries:
安装的库

libiberty.a, libbfd.{a,so}, and libopcodes.{a,so}

Installed directory:
安装的目录
/usr/lib/ldscripts

Short Descriptions
简述
addr2line

Translates program addresses to file names and line numbers; given an address and the name of an executable, it uses the debugging information in the executable to determine which source file and line number are associated with the address
翻译程序地址的文件名和行号；给出一个地址和一个可执行文件的名称，它使用可执行文件调试信息来确定哪些源文件和行号与地址相关

ar
Creates, modifies, and extracts from archives
An assembler that assembles the output of gcc into object files
创建，修改，并提取档案。
一个汇编程序汇编GCC输出到目标文件。

c++filt
Used by the linker to de-mangle C++ and Java symbols and to keep overloaded functions from clashing
所使用的连接器来过滤C + +和Java符号，防止重载函数冲突


elfedit
Updates the ELF header of ELF files

gprof
Displays call graph profile data

ld
A linker that combines a number of object and archive files into a single file, relocating their data and tying up symbol references

ld.bfd
Hard link to ld

nm
Lists the symbols occurring in a given object file

objcopy
Translates one type of object file into another

objdump
Displays information about the given object file, with options controlling the particular information to display; the information shown is useful to programmers who are working on the compilation tools

ranlib
Generates an index of the contents of an archive and stores it in the archive; the index lists all of the symbols defined by archive members that are relocatable object files

readelf
Displays information about ELF type binaries

size
Lists the section sizes and the total size for the given object files

strings
Outputs, for each given file, the sequences of printable characters that are of at least the specified length (defaulting to four); for object files, it prints, by default, only the strings from the initializing and loading sections while for other types of files, it scans the entire file

strip
Discards symbols from object files

libiberty
Contains routines used by various GNU programs, including getopt, obstack, strerror, strtol, and strtoul

libbfd
The Binary File Descriptor library

libopcodes
A library for dealing with opcodes—the “readable text” versions of instructions for the processor; it is used for building utilities like objdump.
