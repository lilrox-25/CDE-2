#!/bin/bash

cd /home/devops/backups
d=$(date +%Y-%m-%d)

sudo sshpass -p "devops" rm -rf *.tar.gz

sudo sshpass -p "devops" tar -cvzf $d-bkup.tar.gz --exclude='backup' /var/lib/jenkins/


ssh devops@10.0.22.120 sh /home/devops/backups/backups.sh
scp -r $d-bkup.tar.gz devops@10.0.22.120:/home/devops/backups

