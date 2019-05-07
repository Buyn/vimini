
if [[ ${1} == *".py"* ]]; then
	echo "p-mvim ${1}"
	#mintty.exe -D -e /bin/bash -li -c "vpvim ${1}"
	mintty.exe -D -e /bin/bash -li -c "p-mvim ${1}"
else
	mintty.exe -D -e /bin/bash -li -c "vim ${1}"
fi

#echo vim $XPATH 
#read -rsp $'Press any key to continue...\n' -n 1 key

