#!/bin/bash -       
#title         :init
#description   :A clean starting point on automatic install.
#author		     :deforris
#date          :202301109
#version       :1.0.1
#usage		     :bash init.sh
#notes         :Starts git install and update stuff before ansible to prevent any conflicts.
#==============================================================================
echo
echo "********** Deforris - Ubuntu Desktop Enviornment Setup **********"
echo
echo "********** Starting apt update. **********"
apt update -y
echo "********** Finished apt update. **********"
echo
echo "********** Starting apt upgrade. **********"
apt upgrade -y
echo "********** Finished apt upgrade. **********"
echo
echo "********** Starting apt autoremove. **********"
apt autoremove -y
echo "********** Finished apt autoremove. **********"
echo
echo "********** Starting install software-properties-common. **********"
apt install software-properties-common
echo "********** Finished install software-properties-common. **********"
echo
echo "********** Press Enter To Continue To git Setup... **********"
read
bash git.sh
