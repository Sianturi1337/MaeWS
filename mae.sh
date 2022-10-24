#!/bin/bash

red="\e[0;91m"
blue="\e[0;94m"
expand_bg="\e[K"
blue_bg="\e[0;104m${expand_bg}"
red_bg="\e[0;101m${expand_bg}"
green_bg="\e[0;102m${expand_bg}"
green="\e[0;92m"
white="\e[0;97m"
bold="\e[1m"
uline="\e[4m"
reset="\e[0m"

sugeng_rawuh() {
    echo -e "
###############################################################################
# Welcome to MaeWS - WEB SERVER AUTO INSTALLER                                #                    
# MaeWS is based on LAMP and LEMP                                             #
# LEMP/LAMP is Linux, Nginx/Apache, MySQL, PHP                                #
# Description: with this tools, you can install LAMP/LEMP automatically       #
# Author : Sianturi1337 - Tinton Arya Permana Sianturi                        #
# Contact Me : sianturi[at]tintonarya.com                                     #
###############################################################################
"
}

sugeng_rawuh

iki_pilihanmu() {
        echo -e "\n
###############################################################################
#                       MaeWS - Choose LAMP or LEMP                           #
###############################################################################    
"
}

iki_pilihanmu

koe_dikonmilih() {
PS3="Select your Web Server please: "

select mae in "MaeWS based on Nginx" "MaeWS based on Apache" "Exit from MaeWS"
do
    case $mae in
        "MaeWS based on Nginx")
            cd tools
            chmod +x maews_nginx.sh
            ./maews_nginx.sh 
            break;;
        "MaeWS based on Apache")
           cd tools
           chmod +x maews_apache.sh
           ./maews_apache.sh 
           break;;
        "Exit from MaeWS")
           echo -e "${green}${bold}\n[MESSAGE] : Good Bye! Thank you for using MaeWS AUTO INSTALLER.\n${reset}"
           break;;
        *)
           echo -e "${red}${bold}\n[ERROR] : Oops!! Your selection does not match the above options. try again!!\n${reset}"
    esac
done
}

koe_dikonmilih
