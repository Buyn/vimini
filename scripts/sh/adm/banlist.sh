#!/usr/bin bash
usrS="Пользователь:";
ipS="источника:";
ipV="NULL";
usrV="NULL";
path="/cygdrive/d/scripts/CMD/IP_BLOCK/list.txt";
cmd="/cygdrive/d/scripts/CMD/IP_BLOCK/cmdList.cmd"
echo "echo Start ip bans" > tmp 
#echo "@echo off" > tmp 
for p in `iconv -f WINDOWS-1251 -t UTF-8 "$path" | cat `; do 
	if [  "$usrV" =  "T" ] ; then
		echo "True! $p"
		usrV="$p"
	fi
	#if [  "$ipV" =  "T" ]  ; then
	if [  "$ipV" =  "T" ] && [[  "$usrV" != "NULL" ]] && [[  "$p" == *"."* ]] && [[  "$p" != *":"* ]]; then
		echo "True! $p"
		ipV="$p"
		echo "call addIpBanList.cmd  $ipV $usrV" >> tmp 
		ipV="NULL"
		usrV="NULL"
	fi
	if [ "$p" = "$usrS" ] ; then
		echo "It's there! $p"
		usrV="T"
	fi
	if [[ "$p" = "$ipS" ]] ; then
		echo "It's there! $p"
		ipV="T"
	fi
done
sed -e 's///g' tmp | iconv -f UTF-8 -t WINDOWS-1251  > $cmd 
#sed -e 's/^M//g' tmp > sLog
#iconv -f UTF-8 -t WINDOWS-1251 sLog > $cmd 

