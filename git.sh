#!/bin/bash -       
#title           :git
#description     :Setup git.
#author		       :deforris
#date            :20230930
#version         :1.0.8
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
cd ..
ssh-keygen -t ed25519 -C jesse.muniz@deforris.com -f $(pwd)/.ssh/id_ed25519
eval "$(ssh-agent -s)"
ssh-add $(pwd)/.ssh/id_ed25519
echo Add ssh key to github...
cat $(pwd)/.ssh/id_ed25519.pub
echo Use machine name shown below...
hostname
echo Press enter when done...
read
echo "********** Finished ssh key and agent **********"
echo
echo "********** Starting git clone of ansible-ubuntu **********"
mkdir $(pwd)/deforris
cd $(pwd)/deforris/
git clone git@github.com:deforris/machine-setup-ubuntu.git
echo "********** Finished git clone of ansible-ubuntu **********"
echo
echo "********** Press Enter To Continue To Ansible... **********"
read
bash ansible.sh

