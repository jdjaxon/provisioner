#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

main() {
    apt-add-repository -y ppa:ansible/ansible
    apt update
    DEBIAN_FRONTEND=noninteractive apt install -y ansible git software-properties-common
    ansible-pull -vU https://github.com/jdjaxon/provisioner
}

main
