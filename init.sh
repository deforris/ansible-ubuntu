#!/bin/bash -       
#title         :init
#description   :A clean starting point on automatic install.
#author		     :deforris
#date          :202301114
#version       :2.0.0
#usage		     :bash init.sh
#notes         :Starts git install and update stuff before ansible to prevent any conflicts.
#==============================================================================
source ./logger.sh

echo Before installations can begin we need a few details.
read -p "Please enter username to setup under: " USERNAME
read -p "Is this a reinstall?: " REINSTALL && [[ $REINSTALL == [yY] || $REINSTALL == [yY][eE][sS] ]] || DEBUG "Not a reinstall"
read -p "Do you want a clean install?:" CLEANINSTALL && [[ $CLEANINSTALL == [yY] || $CLEANINSTALL == [yY][eE][sS] ]] || DEBUG "Not a clean install"
LOCALPATH="/home/$USERNAME/"
REPOPATH="/home/$USERNAME/deforris"
INSTALLPATH="/home/$USERNAME/deforris/machine-setup-ubuntu/"
export USERNAME
export REINSTALL
export CLEANINSTALL
export INSTALLPATH
SCRIPTENTRY
DEBUG "USERNAME $USERNAME"
DEBUG "REINSTALL $REINSTALL"
DEBUG "CLEANINSTALL $CLEANINSTALL"
DEBUG "LOCALPATH $LOCALPATH"
DEBUG "REPOPATH $REPOPATH"
DEBUG "INSTALLPATH $INSTALLPATH"
echo
INFO "********** Deforris - Ubuntu Desktop Enviornment Setup **********"
echo
INFO "********** Starting apt update. **********"
apt update -y
INFO "********** Finished apt update. **********"
echo
INFO "********** Starting apt upgrade. **********"
apt upgrade -y
INFO "********** Finished apt upgrade. **********"
echo
INFO "********** Starting apt autoremove. **********"
apt autoremove -y
INFO "********** Finished apt autoremove. **********"
echo
INFO "********** Starting install software-properties-common. **********"
apt install software-properties-common
INFO "********** Finished install software-properties-common. **********"
echo
INFO "********** Press Enter To Continue To git Setup... **********"
read
SCRIPTEXIT
bash git.sh
