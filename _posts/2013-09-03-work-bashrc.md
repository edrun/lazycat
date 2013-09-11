---
layout: post
title: 编译脚本
tags:
    - work
    - bash
---

####被苦力活给搞死了，只好写个蹩脚的脚本来省下手工
>
	#!/bin/bash

	ROOT_DIR=/home/wwt/apps
	PKG_DIR=gpkg/
	DB_A=DB_A_Free_001
	DB_B=DB_B_Free_001
	DB_C=DB_C_Free_001
	DB_D=DB_D_Free_001
	DB_E=DB_E_Free_001
	DB_F=DB_F_Free_001




	#input app_id which will be complie
	echo "Plz input appid:"
	echo "--------------------------------"
	echo ">> 请输入应用ID："
	read app_id


	PNG_ORI=$app_id/\*.png
	PNG_DEST=$app_id/$app_id.png
	XML=$app_id\*.xml
	VOD=vod\*
	#some useful functions

	##chceck the error
	ccheck(){
		set +e
		cmd=$1
		shift
		$cmd "$@"
		set -e
	}


	##compile the src
	make_p(){
		gvmake clean ;
		gvmake distclean;
		gvmake telechips;
		echo "vodXXX file succed !!!"
	}




	##copy vod* file to app_id dir
	cp_file(){

		if [ -f $app_id/vod$app_id ]; then
		   rm -f $app_id/vod$app_id
		fi
		cp -f $VOD $app_id/vod$app_id

	}



	##use gpkg to make the app img
	pkg_file(){

		if [ !  -f  $PNG_DEST  ]; then
		   mv -f  $PNG_ORI   $PNG_DEST
		fi
		
		if [ -f $XML ]; then
		   gpkg-364 -D $XML -S ./$app_id
		else
		   echo "there is no xml file exists ,please check the file again!"
		   echo "pleas  continue or stop by choosing y|Y|N|n:"
		   read a
		   
		   case "$a" in 
				  y|Y)  gpkg-364 -D $XML -S ./$app_id
				  ;;
				  n|N)
				  exit 1
				  ;;    
		   esac 
		   
		 fi
		
	}




	##scipt to make the image
	exec_script(){

	while [ "$args" != "q" ]
	do
	cat << ENTER
	---------------------------------------
	--    Usage: $0 map|pkg       --
	--    -map   complie the soure ,src  --
	--    -pkg    package the packages   -- 
	--    -q     exit                    --
	---------------------------------------
	>> 请选择参数：	 
	ENTER


	>read args

	>case "$args" in
	>map)  if [ ! -d $ROOT_DIR/$SUB_DIR/$PKG_DIR$app_id ]; then
			  mkdir $ROOT_DIR/$SUB_DIR/$PKG_DIR$app_id
		  fi
		  cd $ROOT_DIR/$SUB_DIR
		  ccheck make_p         
		  echo "成功生成vod文件！！"
		  continue
	>      
	>;;
	pkg)  cd  $ROOT_DIR/$SUB_DIR/$PKG_DIR

		  if [ -d $app_id ]; then
		  echo "dir exits,copy vod file !"
		  cp_file
		  else
		  echo "there is no that dir,please make one:"
		  mkdir -v $app_id
		  ccheck cp_file
		  fi
		  pkg_file
		  echo 
		  echo "！！！！成功生成app！！！！"
		  echo
		  echo
		  echo "*****************************************************"
		  echo 
		  ls -ahl *.pkg
		  echo 
		  echo "*****************************************************"
	>      continue 
	>;;
	>q)  exit 0
	>;;
	esac

	>done
	>}


	>echo "Plz choice which moc you want to compile:"
	cat << ENTER
	--------------------------------------------- 
	---    1) DB_A                          -----
	---                                       -
	---    2) DB_B                            -
	---                                       -
	---    3) DB_C                            - 
	---                                       - 
	---    4) DB_D                            - 
	---                                       -
	---    5) DB_E                            -
	---                                       - 

	---    6) DB_F                            -
	---------------------------------------------
	>>  请选择要编译的模版:
	ENTER
	>
	>##input the choice:1 2 3 4 5 6 
	read choice

	>case "$choice" in
	1)    SUB_DIR=$DB_A
		   exec_script      
		;;
	2)    SUB_DIR=$DB_B
		   exec_script
		;;
	3)    SUB_DIR = DB_C
		   exec_script
		;;
	4)    SUB_DIR=$DB_D
		   exec_script
		;;
		  
	5)    SUB_DIR=$DB_E
		   exec_script
		;;
		  
	6)    SUB_DIR=$DB_F
		   exec_script
		   pkg_file  
		;;
	esac


