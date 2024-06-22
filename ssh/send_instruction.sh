#!/bin/bash

# script file
FILE_INSTRUCTION=$1

# check if parameter was passed
if [ -z "$FILE_INSTRUCTION" ]; then
    echo "Script requer localização e nome do arquivo com instruções"
    exit 1
fi

# remotely run 'FILE_INSTRUCTION'
sudo ssh -i $KEY $USER@$ADDRESS < $FILE_INSTRUCTION