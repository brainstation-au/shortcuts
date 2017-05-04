#!/bin/bash

# Get the version number.
if [ -z "$1" ]; then
  VERSION="5.1"
else
  VERSION=$1
fi

# Add virtualbox source to your repository.
apt-add-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib"

# Check latest version number from https://www.virtualbox.org/wiki/Linux_Downloads.
# Install your expected version of virtualbox.
apt-get update
apt-get install virtualbox-${VERSION} -y
