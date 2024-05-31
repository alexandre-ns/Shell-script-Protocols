#!/bin/bash

TIME_INTERVAL=5
USER=$(whoami)


"0 */5 * * * nome_do_usuario /home/$USER/update.sh"


#copy script file
sudo cp script_update.sh ~/.script_update.sh
chmod +x ~/.script_update.sh
