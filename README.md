# Provisioner
A simple provisioning script to setup a generic development workstation.
Users will need to provide specific configuration files for a personalized experience.

## Supported Distributions
This provisioner was built on and for Ubuntu 20.04. Currently, this will only work on distributions with `apt-get`.

## Running
Clone this repo and simply run the `provision.sh` script.

## Testing
The `Dockerfile` is only used to automate testing without wrecking my personal workstation.

### Building Docker
Just run `build-test-env.sh` shell script.

### Running Docker
To run the built container interactively, run the `run-test-env.sh` script.
