#!/bin/bash

# Import access information
source access_information.txt

# Current directory
atual_dir=$(pwd)

LOCAL_FILE_LOCATION=$1
REMOTE_LOCAL_DESTINATION=$2

# check if parameter was passed
if [ -z "$LOCAL_FILE_LOCATION" ] || [ -z "$REMOTE_LOCAL_DESTINATION" ]; then
    echo "Script requer localização e nome do arquivo local"
    exit 1
fi

# Sends the local file 'LOCAL_FILE_LOCATION' to the server at 'REMOTE_LOCAL_DESTINATION' location
sudo scp -i $KEY $LOCAL_FILE_LOCATION $USER@$ADDRESS:$REMOTE_LOCAL_DESTINATION