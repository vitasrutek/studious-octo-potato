#!/bin/bash
IP=$1
ping -c 3 $ip
returncode=$?
FILE=$2

if [ "$returncode" -eq "0" ] && [ -e "$FILE" ]
then
        echo "Person home."
elif [ "$returncode" -eq "1" ] && [ ! -e "$FILE" ]
then
        echo "Person not home."
elif [ "$returncode" -eq "1" ] && [ -e "$FILE" ]
then
    rm $2
    echo "Person left."
    curl -s -X POST https://api.telegram.org/bot----HERE GOES HTTP API KEY ----/sendMessage -F chat_id=----HERE GOES chat_id ---- -F text="$3 left."
elif [ "$returncode" -eq "0" ] && [ ! -e "$FILE" ]
then
    touch $2
    echo "Person came."
        curl -s -X POST https://api.telegram.org/bot----HERE GOES HTTP API KEY ----/sendMessage -F chat_id=----HERE GOES chat_id ---- -F text="$3 came in."
else
        echo "Error."
fi
