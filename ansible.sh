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
echo "********** Starting python3-pip Install. **********"
apt install python3-pip
echo "********** Finished python3-pip Install. **********" 
echo
echo "********** Starting ansible Install. **********"
apt-add-repository -y ppa:ansible/ansible
apt update
apt install -y ansible
echo "********** Finished ansible Install. **********" 
echo
echo "********** Starting Ansible Install Check. **********"
ansible --version
echo 
echo "********** Press Enter To Continue To Ansible Playbooks... **********"
read
echo "********** Finished Ansible Install Check. **********" 
echo
echo "********** Starting ansible-pull **********"
echo FIX ME HERE
echo FIX ME HERE
echo FIX ME HERE
echo FIX ME HERE
echo FIX ME HERE
echo "********** Finished ansible-pull. **********"
