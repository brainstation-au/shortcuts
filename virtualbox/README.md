# Install virtualbox on ubuntu

## Installation:
- This script was written with this assumption that your terminal already has `sudo` permission. If that's not the case for you, go to `sudo` mode.
  ```
  $ sudo su
  ```
- Check VirtualBox [website](https://www.virtualbox.org/wiki/Linux_Downloads) for latest version number and replace `{version_number}` (e.g. `5.1`) in the following and execute.
  ```
  $ curl -sSL https://goo.gl/WjI361 | bash /dev/stdin {version_number}
  ```
- (Alternatively) this script installs version `5.1`. If you are happy with that:
  ```
  $ curl -sSL https://goo.gl/WjI361 | bash
  ```
- You can now get out of the `sudo` mode.
  ```
  $ exit
  ```
