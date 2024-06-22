#!/bin/bash

# Import access information
source access_information.txt

# Current directory
atual_dir=$(pwd)

FILE_INSTRUCTION=$1

# check if parameter was passed
if [ -z "$FILE_INSTRUCTION" ]; then
    echo "Script requer localização e nome do arquivo com as instruções"
    exit 1
fi

# remotely run 'FILE_INSTRUCTION'
sftp -i $KEY $USER@$ADDRESS < $FILE_INSTRUCTION