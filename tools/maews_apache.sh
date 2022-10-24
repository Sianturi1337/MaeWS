#! /bin/bash

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
start=${woro_woro}

sugeng_rawuh() {
    echo -e "\n
#####################################################################################
# Welcome to MaeWS - WEB SERVER AUTO INSTALLER                                      #                    
# MaeWS is based on APACHE WEB SERVER                                               #
# LAMP is Linux, Apache, MySQL, PHP                                                 #
# Description: with this tools, you can install Apache2 Web Server automatically    #
# Author : Sianturi1337 - Tinton Arya Permana Sianturi                              #
# Contact Me : sianturi[at]tintonarya.com                                           #
#####################################################################################
\n"
}

sugeng_rawuh

iki_pilihanmu() {
        echo -e "\n
###############################################################################
#              MaeWS - LAMP Edition (Linux, Apache, MySQL, PHP)               #
###############################################################################    

\n"
}

iki_pilihanmu


warta_penting() {
    echo -e "${red}${bold}[Important] : Make sure, you install MaeLAMP on a clean server or a new server !!!!\n${reset}"
}

warta_penting

iki_root_udu() {

if [ "$EUID" -ne 0 ]; then
  	echo -e "${red}${bold}[ MaeLAMP - Important Messages ] : Oops! You must run this tools by r00t \n${reset}"
  exit
fi

}

iki_root_udu

ajian_detectos() {
    echo -e "${blue_bg}${bold}\n[ MaeLEMP - OS Checker ] : Checking OS for Compability\n${reset}"; sleep 1;
    mrintah="lsb_release -d"
    metune=$(eval $mrintah 2>&1)
    os=${metune//[[:blank:]]/}
    os=${os#*:}
    versine=$(eval "getconf LONG_BIT")
    SingIso=("Ubuntu" "Debian")
    if [[ " ${SingIso[@]} " =~ " ${os} " ]]; then
        if hash mysql 2>/dev/null; then
            echo -e "${red}${bold}[ MaeLAMP - MySQL ] : MySQL is already installed detected, this tools only supported for clean servers. \n${reset}"
            echo -e "\n"
        if hash apache2 2>/dev/null; then
            echo -e "${red}${bold}[ MaeLAMP - Apache ] : Apache is already installed detected, this tools only supported for clean servers. \n${reset}"
            echo -e "\n"
        if hash php 2>/dev/null; then
            echo -e "${red}${bold}[ MaeLAMP - PHP ] : PHP is already installed detected, this tools only supported for clean servers. \n${reset}"
            echo -e "\n"
            
        else
        ${start}
            fi
                fi
            fi
        fi

}

ajian_detectos

echo -e "\n"

woro_woro() {
    for i in `seq 3 -1 1` ; do echo -ne "$i\rWelcome to MaeLAMP AUTO INSTALLER will be start in . . . . "; sleep 1; done 
}

woro_woro

echo -e "\n"

nganyari_sistem() {
    echo -e "${blue_bg}${bold}\n[ MaeLAMP - Updating ] : The system is currently updating and upgrading your server to make performance better . . . \n${reset}";
    sudo apt update -y && sudo apt upgrade -y || echo -e "${red_bg}${bold}\n[ERROR] : We can't update and upgrading your server, please check.\n${reset}"
}

nganyari_sistem

nambahi_repo() {
    echo -e "${blue_bg}${bold}\n [ MaeLEMP - Adding Repository ] : Adding ppa:ondrej/php to your server\n${reset}"; sleep 1;
    apt install lsb-release ca-certificates apt-transport-https software-properties-common -y
    add-apt-repository ppa:ondrej/php -y
    sudo apt update -y && sudo apt upgrade -y
}

nambahi_repo

masangi_alat() {
        echo -e "${blue_bg}${bold}\n[ MaeLAMP - Install Apache ] : Installing Apache .... \n${reset}";
        apt install apache2 -y || echo -e "${red_bg}${bold}\n[ERROR] : We can't installing Apache on your server, please check.\n${reset}"
        
        echo -e "${blue_bg}${bold}\n[ MaeLAMP - Enabling Apache ] : Enabling and Restarting Apache .... \n${reset}";
        systemctl enable apache2 && systemctl restart apache2
        echo -e "${blue_bg}${bold}\n[ MaeLAMP - Install MySQL Database Server ] : Installing MariaDB Server & Client .... \n${reset}";
        apt install mariadb-server mariadb-client -y || echo -e "${red_bg}${bold}\n[ERROR] : We can't installing MariaDB Server & Client on your server, please check.\n${reset}"

        echo -e "${blue_bg}${bold}\n[ MaeLAMP - Enabling MySQL Database Server ] : Enabling and Restarting MariaDB .... \n${reset}";
        systemctl enable mysql && systemctl restart mysql
        echo -e "\n"
        echo -e "${blue_bg}${bold}\n[ MaeLAMP - Install PHP ] : Installing PHP to your Server\n${reset}";
        apt install php8.0-fpm php-mysql php8.0-cli php8.0-zip php8.0-mbstring php8.0-imap php8.0-common php8.0-redis php8.0-xml -y || echo -e "${red_bg}${bold}\n[ERROR] : We can't installing PHP in your server, please check.\n${reset}"
        ${matur_suwun}
}

masangi_alat

matur_suwun() {
    echo -e "${green}${bold}
=====================================================================
|                            THANK YOU!                             |
|                YOUR LEMP STACK HAS BEEN INSTALLED                 |
|                                BY                                 |
|                       MaeLEMP AUTO INSTALLER                      |
=====================================================================
\n${reset}"

}

matur_suwun
exit
