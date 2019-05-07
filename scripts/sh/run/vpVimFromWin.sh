#!/bin/sh
if [ "${1}" = "" ];
	then
		XPATH=".";
	else
		XPATH="$(cygpath "${1}")";
fi
#echo vim $XPATH 
#read -rsp $'Press any key to continue...\n' -n 1 key
name=$(basename "$XPATH");
# start probs
#echo XPATH
#echo $XPATH
#echo {1}
#echo ${1}
#echo name
#echo $name
#read -rsp $'Press any key to continue...\n' -n 1 key
# end probs
export PS1="\[\e[32m\]\u@\h \[\e[33m\]\w\[\e[0m\]\n$ "
echo -ne "\e]0;$name\a"
vpvim "$XPATH" 

