FROM ubuntu:20.04
RUN apt update
RUN apt install -y wget
RUN wget https://raw.githubusercontent.com/jdjaxon/provisioner/main/provision.sh -O - | bash || true
