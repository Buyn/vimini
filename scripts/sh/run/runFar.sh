#!/bin/sh
#if [ "${1}" = "" ];
#  then
#  	XPATH=".";
#  else
#  #	XPATH="$(cygpath -C ANSI -w "${1}")";
#  	XPATH="$(cygpath "${1}")";

#fi
#echo "D:\shell\Far\far.exe" "${1}"
#echo "D:\shell\Far\far.exe" '${1}'
cygstart "D:\shell\Far\far.exe" "${1}"
