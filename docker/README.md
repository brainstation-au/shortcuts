# Docker

## Install docker

### Install for currently logged in user (when you have `sudo` access).
```
$ curl -sS https://goo.gl/DQhcnG | bash
```

### Install for specific user `USERNAME` (when you don't have `sudo` access).
```
$ sudo -i
$ curl -sS https://goo.gl/DQhcnG | bash /dev/stdin {USERNAME}
$ logout
```
*Replace the {USERNAME} by your expected one*
