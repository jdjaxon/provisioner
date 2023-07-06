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
The `Dockerfile` is only used to automate testing without wrecking my personal workstation.

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

To speed up testing, the `build-and-run.sh` builds and then runs the docker container interactively
using the same commands as above, chained together. `rm-test-env.sh` will remove the test environment.
