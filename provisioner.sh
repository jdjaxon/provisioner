#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

easy_install pip
pip install ansible

# TODO: Verify ansible installation worked
ansible --version

apt update
apt install software-properties-common
apt-add-repository --yes --update ppa:ansible/ansible
apt install ansible
