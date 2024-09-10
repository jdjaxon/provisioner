# Provisioner
This repo contains an Ansible provisioner to setup my personal development environment.
Since I typically use Ubuntu or PopOS, this is designed for Debian-based distributions.

## Running
To run the provisioner, execute one of the following commands:

| Method | Command |
|:-:|:-:|
| `wget` | `sudo sh -c "$(wget https://raw.githubusercontent.com/jdjaxon/provisioner/main/provision.sh -O -)"` |
| `curl` | `sudo sh -c "$(curl -fsSL https://raw.github.com/jdjaxon/provisioner/main/provision.sh)"` |

**NOTE:** For running with docker, see the [Testing](#testing) section.

## Testing
In order to simplify testing of this project as much as possible, I created a
`makefile`. Just run `make` after cloning the repository, which runs the
`docker build` and `run` commands from below.

To manually build the docker image, run the following command from the repo's root directory:
```
docker build -t test-env .
```

Once the test environment is built, you can run the container interactively with bash using:
```
docker run -it test-env bash
```

To remove the `test-env` image, run:
```
docker rmi test-env --force
```
