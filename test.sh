#!/bin/bash
echo hi $1
myvar=$(cygpath $1) 
myvarQ=\"$myvar\"
echo $myvar
echo $myvarQ
if [ ! -f "/cygdrive/d/del/del thr/my 1.txt" ] ; then
   echo "File $FILE does not exist."
fi
if [ ! -f \"$myvar\" ] ; then
   echo "File $FILE does not exist."
fi
