#!/bin/bash

TIME_INTERVAL=5
USER=$(whoami)
DATE=$(date)

echo > update.log

sudo cp script_update.sh /home/$USER/.script_update.sh

"0 */$TIME_INTERVAL * * * root /home/$USER/.script_update.sh >> /home/$USER/update.log 2>&1"

#copy script file
sudo cp script_update.sh ~/.script_update.sh
chmod +x ~/.script_update.sh
