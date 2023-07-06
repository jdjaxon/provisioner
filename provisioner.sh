#!/usr/bin/env bash

sudo easy_install pip
sudo pip install ansible
# Verify ansible installation worked
ansible --version

sudo apt update
apt install software-properties-common
sudo apt-add-repository --yes --update ppa:ansible/ansible
sudo apt install ansible
