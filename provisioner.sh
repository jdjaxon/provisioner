#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

apt update
# This is a hacky way of setting the time zone information.
# 2 for America; 105 for New York
echo "2\n 105\n" | apt install -y software-properties-common

apt-add-repository --yes --update ppa:ansible/ansible
apt install -y ansible git
ansible --version
ansible-pull -U https://github.com/jdjaxon/provisioner
