#!/bin/bash


if [[ $1 != "NoColor" && $2 != "NoColor" ]]; then
    Color_R=$(tput setaf 9)
    Color_G=$(tput setaf 10)
    Color_B=$(tput setaf 12)
    Color_Y=$(tput setaf 11)
    Color_N=$(tput sgr0)
fi

Echo() {
    echo "${Color_B}$1 ${Color_N}"
}

Error() {
    echo -e "\n${Color_R}[Error] $1 ${Color_N}"
    [[ ! -z $2 ]] && echo "${Color_R}* $2 ${Color_N}"
    echo
    exit 1
}

Input() {
    echo "${Color_G}$1 "
}

read -p "$(Input 'Please Enter Your Episode')" e
if [ $e -lt 27 -a $e -gt 0 ]
then
	google-chrome --app="https://www.bilibili.com/video/BV1Us411X7pH?p=$e"
else
	Error 'WRONG INPUT!'
fi

