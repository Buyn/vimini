#!/bin/bash
debagMSG(){
	echo @
	echo $@
	echo *
	echo $*
	echo XPATH
	echo $XPATH
	echo "$1"
	echo {$1}
	echo "$2"
	echo arg
	echo "$arg"
	echo name
	echo $name
	echo FILE
	echo $FILE
	read -rsp $'Press any key to continue...\n' -n 1 key
}
	
if [ "$1" = "" ];
	then
		XPATH=".";
	else
		XPATH="$(cygpath  "$1")";
fi
FILE=$XPATH     
if [ ! -f $FILE ] ; then
   echo "File $FILE does not exist."
   echo "File $1 does not exist."
	DIRPATH=$(dirname "$XPATH")
	if [ ! -e $DIRPATH ] ; then
		read -rsp $"Press 'y' to creat $DIRPATH, any key to continue..." -n 1 key
		if [ "$key" = "y" ] ; then
			echo -e "\n creting dir $DIRPATH"
			mkdir -p  $DIRPATH
			#read -rsp $'Press any key to continue...\n' -n 1 key
		fi
	fi
fi
#echo "open File $FILE "
name=$(basename "$XPATH");
# start probs
#debagMSG $1 
# end probs
#export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
echo -ne "\e]0;$name \a"
echo -ne "\e]0;$name $1\a"
#debagMSG   $* 
#debagMSG    
vim $FILE
#arg= "$(echo $1 | tr -s '""' '"')"
#debagMSG $arg

