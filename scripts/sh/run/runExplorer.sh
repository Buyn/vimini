#!/bin/sh
if [ "${1}" = "" ];
	then
		XPATH=".";
	else
		XPATH="$(cygpath -C ANSI -w "${1}")";
fi
explorer $XPATH &
