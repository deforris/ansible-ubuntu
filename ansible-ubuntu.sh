#!/bin/bash -       
#title           :ansible-ubuntu
#description     :Setup Ubuntu Desktop Enviornment.
#author		 :deforris
#date            :20230930
#version         :1.0.0
#usage		 :bash ansible-ubuntu.sh
#notes           :Installs bare minimum to perform ansible and starts ansible.
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
