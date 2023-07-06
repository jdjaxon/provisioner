#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

main() {
    apt-add-repository --yes --update ppa:ansible/ansible
    apt install -y ansible git software-properties-common
    ansible --version
    ansible-pull -U https://github.com/jdjaxon/provisioner
}

main
