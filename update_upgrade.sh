#!/bin/bash

#creates a log file to save the output of the commands
touch ~/update.log

#creates a unit of service using the update.service file
sudo cp static/update.service /etc/systemd/system/


sudo cp script_update.sh   ~/.script_update.sh


#chmod +x /usr/local/bin/meu_script.sh