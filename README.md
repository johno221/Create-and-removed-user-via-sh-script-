# Create-and-removed-user-via-sh-script-
Automating User Account - Linux Shell script add and removed a user with a password to the system

This script has to be run as superuser or root. 

Run script as following: 
sudo ./create_user.sh
sudo ./removed_user.sh

Run ansible script as following via terminal 

ansible-playbook -i hosts playbook/remove_user.yml --extra-vars "username=<ADD HERE USER NAME>"
