#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

main() {
    apt update
    DEBIAN_FRONTEND=noninteractive sudo apt install -y software-properties-common
    apt-add-repository -y --update ppa:ansible/ansible
    DEBIAN_FRONTEND=noninteractive sudo apt install -y ansible git
    ansible-pull -U https://github.com/jdjaxon/provisioner
}

main
