#!/bin/bash -       
#title           :git
#description     :Setup git.
#author		 :deforris
#date            :20230930
#version         :1.0.0
#usage		 :bash git.sh
#notes           :Installs and configures git minimally making sure I didnt forget anything.
#==============================================================================

echo Starting git Install.
apt install git -y
echo Finished git Install.

echo Starting git Configuration...
git config --global user.name "deforris"
echo Please enter your email
read email
echo Email set to $email
git config --gloabl user.email $email
git config --global color.ui auto
echo Finished git Configuration...

echo Setting up ssh key and agent
ssh-keygen -t ed25519 -C "{$email}"
ssh-add ~/.ssh/id_ed25519
echo Add ssh key to github...
cat ~/.ssh/id_ed25519.pub
echo Press enter when done.
read

echo Pulling down ansible-ubuntu git repo.
mkdir ~/deforris
cd ~/deforris/
git clone git@github.com:deforris/ansible-ubuntu.git
echo Press enter to continue to ansible
read


