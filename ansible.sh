#!/bin/bash -       
#title           :ansible
#description     :Setup ansible and kickoff.
#author		 :deforris
#date            :20230930
#version         :1.0.0
#usage		 :bash ansible.sh
#notes           :Installs and configures ansible minimally making sure I didnt forget anything.
#==============================================================================
echo
echo "********** Starting ansible Install. **********"
apt install ansible -y
echo "********** Finished ansible Install. **********" 
echo
echo "********** Starting git Install. **********"
apt install git -y
echo "********** Finished git Install. **********"
