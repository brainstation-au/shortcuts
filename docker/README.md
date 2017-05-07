# Docker

## Install docker

### Install for currently logged in user (when you have `sudo` access).
```
$ curl -sSL https://goo.gl/DQhcnG | bash
```

### Install for specific user `USERNAME` (when you don't have `sudo` access).
```
$ sudo su
$ curl -sSL https://goo.gl/DQhcnG | bash /dev/stdin {USERNAME}
$ exit
```
*Replace the {USERNAME} by your expected one*
