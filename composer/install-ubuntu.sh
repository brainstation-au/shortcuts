#!/bin/bash

# Stop the execution of a script if a command or pipeline has an error.
set -e

# Print all executed commands to the terminal.
set -x

# Check if already installed.
which composer &> /dev/null
if [ $? == 0 ]; then
  echo "Composer already exists."
  return
fi

# Check if wget is already installed.
which wget &> /dev/null
if [ $? == 1 ]; then
  # Update package information.
  apt-get update > /dev/null
  # Install wget.
  apt-get install wget
fi

. install.sh
