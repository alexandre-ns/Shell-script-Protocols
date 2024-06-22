#!/bin/bash

# Import access information
source access_information.txt

# Access
sudo ssh -i $KEY $USER@$ADDRESS