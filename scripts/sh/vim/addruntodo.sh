#echo "parm 1 = " $1
#echo "parm 2 = " $2
# D:\tools.win\Fast\TehnoMage_fast
echo "rem " $1 " {{{">> /cygdrive/d/tools.win/Fast/TehnoMage_fast/starttodo.cmd
echo "start D:\shell\CygWin\cygwin64\bin\mintty.exe -s 43,24 -T '$1' -e /bin/bash -li -c 'vim $2'" >> /cygdrive/d/tools.win/Fast/TehnoMage_fast/starttodo.cmd
echo "rem }}}">> /cygdrive/d/tools.win/Fast/TehnoMage_fast/starttodo.cmd
#read -rsp $'Press any key to continue...\n' -n 1 key

