#!/bin/bash -       
#title           :ansible-ubuntu
#description     :Setup Ubuntu Desktop Enviornment.
#author		 :deforris
#date            :20230930
#version         :1.0.0
#usage		 :bash ansible-ubuntu.sh
#notes           :Installs bare minimum to perform ansible and starts ansible.
#==============================================================================

echo Deforris - Ubuntu Desktop Enviornment Setup

echo Starting apt update.
apt update -y
echo Finished apt update.

echo Starting apt upgrade.
apt upgrade -y
echo Finished apt upgrade.

echo Press Enter To Continue...
read
bash git.sh
