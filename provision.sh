#!/usr/bin/env bash

# This script is intended to stage the host for running ansible,
# which will finish the provisioning process.

main() {
    apt update
    DEBIAN_FRONTEND=noninteractive apt install -y ansible git software-properties-common
    apt-add-repository -y --update ppa:ansible/ansible
    ansible-pull -U https://github.com/jdjaxon/provisioner
}

main
