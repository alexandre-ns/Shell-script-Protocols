#!/bin/bash

SERVER=${1:-""} #optional parameter, in default case the value is 'atual_dir'

if [ "$SERVER" = "" ]; then
    source access_information.txt
fi

# Access
sudo ssh -i $KEY $USER@$ADDRESS