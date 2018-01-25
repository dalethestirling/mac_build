#! /bin/bash

# Install ansible for the installer
easy_install pip
pip install ansible

# run the installer
ansible-playbook -i ansible/inventory -K pb_mac_configure.yaml
