#!/usr/bin/env bash

echo "Please select your role (1 - Developer; 2 - Analyst):"
read selected_role

if [ $selected_role -eq 1 ]; then
    machine_role="product_developer"
elif [ $selected_role -eq 2 ]; then
    machine_role="product_analyst"
else
    echo "Please select a valid option (1 or 2)!"
fi

#Install brew
if [ $(which brew) > /dev/null ]; then
    echo "Homebrew is already installed."
else
    echo "Installing Homebrew..."
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    echo "Homebrew installed."
fi

#Install ansible
if [ $(which ansible-playbook) > /dev/null ]; then
    echo "Ansible is already installed."
else
    echo "Installing Ansible..."
    brew install ansible
    echo "Ansible installed."
fi

echo "Installing all software for a $machine_role..."
ansible-playbook -i hosts/hosts -c local --become-method=su -e machine_role="$machine_role" playbook.yml
echo "Process completed!"