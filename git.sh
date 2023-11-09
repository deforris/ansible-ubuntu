#!/bin/bash -       
#title           :git
#description     :Setup git.
#author		       :deforris
#date            :20230930
#version         :1.0.3
#usage		       :bash git.sh
#notes           :Installs and configures git minimally making sure I didnt forget anything.
#==============================================================================
echo
echo "********** Starting git Install. **********"
apt install git -y
echo "********** Finished git Install. **********"
echo
echo "********** Starting git Configuration. **********"
git config --global user.name deforris
git config --global user.email jesse.muniz@deforris.com
git config --global color.ui auto
echo "********** Finished git Configuration. **********"
echo
echo "********** Starting ssh key and agent **********"
ssh-keygen -t ed25519 -C jesse.muniz@deforris.com -f ~/.ssh/id_ed25519
ssh-add ~/.ssh/id_ed25519
echo Add ssh key to github...
cat ~/.ssh/id_ed25519.pub
echo Use machine name -vvv-
hostname
echo Press enter when done...
read
echo "********** Finished ssh key and agent **********"
echo
echo "********** Starting git clone of ansible-ubuntu **********"
mkdir ./deforris
cd ./deforris/
git clone git@github.com:deforris/ansible-ubuntu.git
echo "********** Finished git clone of ansible-ubuntu **********"
echo
echo "********** Press Enter To Continue To Ansible... **********"
read
bash ansible.sh

