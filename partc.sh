#!/bin/bash
#Script Menu

#User defined function 

#Define Variables
EDITOR=vim
PASSWD=/etc/passwd
RED='\033[0;41;30m'
STD='\033[0;0;39m'

#User defined function


pause() {
	read -p "Press [Enter] key to continue..." fackEnterKey
}

one() {
	echo "one() called"
	pause 

	echo 'TODO: Find command, directory where search should start'
}

two() {

	echo "two() called"
	pause
	echo 'TODO: File System Type to search for'
}

three() {
	echo "three() called"
	pause
	echo 'TODO: value applied to search, wildcards, characters representing 			class of characters.'

}

four() {

	echo "four() called"
	pause
	echo 'TODO: maximum depth of search'

}

five() {

	echo 'five() called'
	pause
	echo 'TODO: action on search result - delete, print, print0.'

}

#display menu
show_menus() {
	clear
	echo "~~~~~~~~~~~~~~~~~~~~~~"
	echo " M A I N - M E N U" 
	echo "~~~~~~~~~~~~~~~~~~~~~~"
	echo "1. Function 1"
	echo "2. Function 2"
	echo "3. Function 3"
	echo "4. Function 4"
	echo "5. Function 5"
	echo "6. Exit"
}


read_options() {
local choice
read -p "Enter choice [1-3] " choice
case $choice in

	1) one ;;
	2) two ;;
	3) three ;;
	4) four;;
	5) five;;
	6) exit 0;;
	*) echo -e "${RED}Error...${STD}" && sleep 22

	esac

}

trap '' SIGINT SIGQUIT SIGTSTP

#Infinite Loop
while true
do
	show_menus
	read_options
done
