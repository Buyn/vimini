#!/bin/sh 
debagMSG(){
	echo @
	echo $@
	echo *
	echo $*
	echo XPATH
	echo $XPATH
	echo "$1"
	echo {$1}
	echo arg
	echo "$arg"
	echo name
	echo $name
	read -rsp $'Press any key to continue...\n' -n 1 key
}
#debagMSG   $* 
#arg= "$(echo $1 | tr -s '""' '"')"
#debagMSG $arg
if [ "$arg" = "" ];
	then
		XPATH=".";
	else
		XPATH="$(cygpath "$arg")";
fi
name=$(basename "$XPATH");
# start probs
#debagMSG $1 
# end probs
export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
echo -ne "\e]0;$name\a"
vim "$XPATH" 
#read -rsp $'Press any key to continue...\n' -n 1 key

