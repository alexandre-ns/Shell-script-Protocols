#!/bin/bash

#creates a log file to save the output of the commands
touch ~/update.log

#creates a unit of service using the update.service file
sudo cp static/update.service /etc/systemd/system/

#copy script file
sudo cp script_update.sh ~/.script_update.sh
chmod +x ~/.script_update.sh

#reload the systemd daemon
sudo systemctl daemon-reload

#enable unit of service
sudo systemctl enable update.service
