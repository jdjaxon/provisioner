FROM ubuntu:20.04
RUN apt update
RUN apt install -y wget
RUN sh -c "$(wget https://raw.githubusercontent.com/jdjaxon/provisioner/main/provisioner.sh -O -)"
