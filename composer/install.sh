#!/bin/bash

# Check if already installed.
which composer &> /dev/null
if [ $? == 0 ]; then
  echo "Composer already exists."
  return
fi

# Stop the execution of a script if a command or pipeline has an error.
set -e

# Print all executed commands to the terminal.
set -x

# https://getcomposer.org/doc/faqs/how-to-install-composer-programmatically.md

EXPECTED_SIGNATURE=$(wget -q -O - https://composer.github.io/installer.sig)
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
ACTUAL_SIGNATURE=$(php -r "echo hash_file('SHA384', 'composer-setup.php');")

if [ "$EXPECTED_SIGNATURE" != "$ACTUAL_SIGNATURE" ]
then
    >&2 echo 'ERROR: Invalid installer signature'
    rm composer-setup.php
    exit 1
fi

php composer-setup.php --quiet
RESULT=$?
rm composer-setup.php
exit $RESULT