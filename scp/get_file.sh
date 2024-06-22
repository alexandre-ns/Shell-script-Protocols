#!/bin/bash

# Import access information
source access_information.txt

# Current directory
atual_dir=$(pwd)

REMOTE_FILE_LOCATION=$1
LOCAL_DESTINATION=${2:-"$atual_dir"} #optional parameter, in default case the value is 'atual_dir'


if [ -z "$REMOTE_FILE_LOCATION" ]; then
    echo "Script requer localização e nome do arquivo remoto"
    exit 1
fi

#get file(FILE) in server in location 'REMOTE_FILE_LOCATION' with destination 'LOCAL_DESTINATION'
sudo scp -i $KEY $USER@$ADDRESS:$REMOTE_FILE_LOCATION $LOCAL_DESTINATION