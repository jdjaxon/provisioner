FROM ubuntu:20.04
RUN apt update
# sudo and firefox are needed to test CAC support.
RUN apt install -y sudo wget firefox
RUN sh -c "$(wget https://raw.githubusercontent.com/jdjaxon/provisioner/main/provision.sh -O -)"
