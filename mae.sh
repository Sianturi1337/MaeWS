#!/bin/bash

#### Colors Output

RESET="\033[0m"			# Normal Colour
RED="\033[0;31m" 		# Error / Issues
GREEN="\033[0;32m"		# Successful       
BOLD="\033[01;01m"    	# Highlight
WHITE="\033[1;37m"		# BOLD
YELLOW="\033[1;33m"		# Warning
PADDING="  "
DPADDING="\t\t"


#### Other Colors / Status Code

LGRAY="\033[0;37m"		# Light Gray
LRED="\033[1;31m"		# Light Red
LGREEN="\033[1;32m"		# Light GREEN
LBLUE="\033[1;34m"		# Light Blue
LPURPLE="\033[1;35m"	# Light Purple
LCYAN="\033[1;36m"		# Light Cyan
SORANGE="\033[0;33m"	# Standar Orange
SBLUE="\033[0;34m"		# Standar Blue
SPURPLE="\033[0;35m"	# Standar Purple      
SCYAN="\033[0;36m"		# Standar Cyan
DGRAY="\033[1;30m"		# Dark Gray

banner(){
clear
echo -e "
${GREEN}   __  ___       ${SPURPLE} _      ______${RESET}
${GREEN}  /  |/  /__ ____${SPURPLE}| | /| / / __/${RESET}
${GREEN} / /|_/ / _ '/ -_${SPURPLE}) |/ |/ /\ \  ${RESET}
${GREEN}/_/  /_/\_,_/\__/${SPURPLE}|__/|__/___/ ${RESET}v{1.2#${YELLOW}dev${RESET}} by @sianturi1337

${SPURPLE}MaeWS${RESET} - ${SCYAN}LE${RESET}/${SCYAN}AMP${RESET} Automated installer\n\n"
}
optMenu(){

    optNginx=$(echo -ne "MaeWS based on ${GREEN}Nginx${RESET}")
    optApache=$(echo -ne "MaeWS based on ${SORANGE}Apache${RESET}")
    optExit=$(echo -ne "Exit from ${SPURPLE}MaeWS${RESET}")
    PS3="Select your Web Server: "

    select maeOpt in "${optNginx}" "${optApache}" "${optExit}"
    do
        case $maeOpt in
            "${optNginx}")
                cd tools
                chmod +x maews_nginx.sh
                ./maews_nginx.sh 
                break;;
            "${optApache}")
            cd tools
            chmod +x maews_apache.sh
            ./maews_apache.sh 
            break;;
            "${optExit}")
            echo -e "${green}${bold}\n[MESSAGE] : Good Bye! Thank you for using MaeWS AUTO INSTALLER.\n${reset}"
            break;;
            *)
            echo -e "${red}${bold}\n[ERROR] : Oops!! Your selection does not match the above options. try again!!\n${reset}"
        esac
    done

}

banner
optMenu
