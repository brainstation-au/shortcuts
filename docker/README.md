# Docker

## Install docker

### Install for currently logged in user (when you have `sudo` access).
```
$ curl -sS https://raw.githubusercontent.com/brainstation-au/shortcuts/master/docker/install-ubuntu.sh | bash
```

### Install for specific user `USERNAME` (when you don't have `sudo` access).
```
$ sudo su
$ curl -sS https://raw.githubusercontent.com/brainstation-au/shortcuts/master/docker/install-ubuntu.sh | bash /dev/stdin {USERNAME}
$ exit
```
*Replace the {USERNAME} by your expected one*
