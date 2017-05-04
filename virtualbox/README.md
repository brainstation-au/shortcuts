# Install virtualbox on ubuntu

## Installation:
- This script was written with this assumption that your terminal already has `sudo` permission. If that's not the case for you, go to `sudo` mode.
  ```
  $ sudo -i
  ```
- Check VirtualBox [website](https://www.virtualbox.org/wiki/Linux_Downloads) for latest version number and replace `{version_number}` in the following and execute.
  ```
  curl -sS https://raw.githubusercontent.com/brainstation-au/shortcuts/master/virtualbox/install-ubuntu.sh | bash /dev/stdin {version_number}
  ```
