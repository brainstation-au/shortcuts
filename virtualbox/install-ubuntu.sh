#!/bin/bash

# Add virtualbox source to your repository.
apt-add-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib"

# Check latest version number from https://www.virtualbox.org/wiki/Linux_Downloads.
# Install your expected version of virtualbox.
apt-get update
apt-get install virtualbox-5.1
