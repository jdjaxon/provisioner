#!/usr/bin/env bash

# Intended to stage the host for running ansible

easy_install pip
pip install ansible

# Verify ansible installation worked
ansible --version

apt update
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible
