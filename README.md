# Provisioner
A simple provisioning script to setup a generic development workstation.
Users will need to provide specific configuration files for a personalized experience.

## Supported Distribution
This provisioner was built on and for Ubuntu 20.04. Currently, this will only work on distributions with `apt-get`.

## Testing
The Dockerfile is only used to automate testing without wrecking my personal workstation.

### Docker Commands
Building the docker environment:
```
docker build -t dev .
```
- **NOTE:** the dot at the end of the command tell docker to look locally for the Dockerfile.

Running the container interactively to verify the environment:
```
docker run -it dev bash
```
