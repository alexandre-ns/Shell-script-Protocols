#!/bin/bash

DATE=$(date)
USER=$(whoami)
UPDATE=$(sudo apt update | tail -n 1)
STATUS_UPDATE=$?

UPGRADE=$(sudo apt upgrade -y | tail -n 1)
STATUS_UPGRADE=$?

if [ ! -e "/home/$USER/update.log" ]; then #Se arquivo de log não existe, então ele é criado
    echo > /home/$USER/update.log
fi

sed -i '1s/^/'"$DATE"'\nUPDATE:'"$UPDATE"'\nUPGRADE: '"$UPGRADE"'\n\n/' ~/teste.log