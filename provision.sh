#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

main() {
    apt-add-repository -y --update ppa:ansible/ansible
    DEBIAN_FRONTEND=noninteractive sudo apt install -y ansible git software-properties-common
    ansible-pull -U https://github.com/jdjaxon/provisioner
}

main
