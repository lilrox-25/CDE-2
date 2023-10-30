#!/bin/bash

HOSTNAME=ipvalue

USERNAME=devops
PASSWORD=devops

# Add host entry to the host file
sshpass -p devops sudo  echo -e "[servername]\n${HOSTNAME} ansible_user=${USERNAME} ansible_ssh_pass=${PASSWORD} ansible_sudo_pass=${PASSWORD}" >> /etc/ansible/hosts
