#!/bin/bash

# Add virtualbox source to your repository.
sudo apt-add-repository "deb http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib"

# Check latest version number from https://www.virtualbox.org/wiki/Linux_Downloads.
# Install your expected version of virtualbox.
sudo apt-get update
sudo apt-get install virtualbox-5.1 -y
