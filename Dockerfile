FROM ubuntu:20.04
RUN apt update
# sudo and firefox are needed to test CAC support.
RUN apt install -y sudo wget firefox
RUN useradd -ms /bin/bash docker && echo "docker:docker" | chpasswd && adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker
WORKDIR /home/docker
RUN sh -c "$(wget https://raw.githubusercontent.com/jdjaxon/provisioner/main/provision.sh -O -)"
