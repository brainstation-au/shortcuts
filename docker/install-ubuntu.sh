#!/bin/bash

# use a frontend that expects no interactive input at all.
export DEBIAN_FRONTEND=noninteractive

# Check if docker is already installed.
which docker &> /dev/null
if [ $? == 0 ]
then
  echo "Docker already exists."
else
  # Stop the execution of a script if a command or pipeline has an error.
  set -e

  # Print all executed commands to the terminal
  set -x

  # @see https://docs.docker.com/engine/installation/linux/ubuntu.

  # Update package information.
  apt-get update > /dev/null

  # Install packages to allow apt to use a repository over HTTPS:
  apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

  # Add Docker’s official GPG key:
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

  # Set up the stable docker repository.
  add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

  # Update package information.
  apt-get update > /dev/null

  # Install the latest version of Docker
  apt-get install docker-ce -y
fi

# Add the docker group if it doesn't already exist.
getent group docker || groupadd docker

# Add the user to the docker group.
if [ -z $1 ]
then
  gpasswd -a $USER docker
else
  gpasswd -a $1 docker
fi

# Restart the Docker daemon.
service docker restart
