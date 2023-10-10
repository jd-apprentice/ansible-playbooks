#!/bin/bash

read -p "Enter module: " module
read -p "Enter playbook: " playbook
read -p "Enter inventory: " inventory

error=no

if [ -z "$module" ]; then
    echo "\033[1;31m❌ module is not set\033[0m"
    error=yes
fi

if [ -z "$playbook" ]; then
    echo "\033[1;31m❌ playbook is not set\033[0m"
    error=yes
fi

if [ -z "$inventory" ]; then
    echo "\033[1;31m❌ inventory is not set\033[0m"
    error=yes
fi

if [ "$error" = "yes" ]; then
    echo "\033[1;32m✅ Run again with: make playbook\033[0m"
    exit 1
fi


ansible-playbook ansible/playbooks/"$module"/"$playbook".yml -i ansible/inventory/"$inventory".ini
