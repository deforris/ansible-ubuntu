#!/bin/bash -       
#title           :ansible
#description     :Setup ansible and kickoff.
#author		       :deforris
#date            :20230930
#version         :1.0.1
#usage		       :bash ansible.sh
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
echo "********** Finished Ansible Install Check. **********" 
echo
echo "********** Press Enter To Continue To Ansible Playbooks... **********"
read
echo
echo "********** Starting ansible-pull **********"
ansible-pull -U https://github.com/deforris/machine-setup-ubuntu.git
echo "********** Finished ansible-pull. **********"
