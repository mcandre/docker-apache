# docker-apache - a Docker container running a continuous Apache server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-apache/

# EXAMPLE

```
$ make
docker build -t mcandre/docker-apache:latest .
docker run -d -p 80:80 mcandre/docker-apache:latest
c9de1f578b4c110d422b8de1009bf50c8955011c8f192eddf71e2c77b673de0a
curl http://$(docker-machine ip default)
<html><body><h1>It works!</h1>
<p>This is the default web page for this server.</p>
<p>The web server software is running but no content has been added, yet.</p>
</body></html>
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [curl](http://curl.haxx.se/)
* [make](http://www.gnu.org/software/make/)
* [Node.js](https://nodejs.org/en/) (for dockerlint)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io curl build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io curl
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Docker Toolbox](https://www.docker.com/toolbox)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install dockertoolbox
$ brew install curl
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install virtualbox curl make
```

* [DockerToolbox-1.8.2c.exe](https://github.com/docker/toolbox/releases/download/v1.8.2c/DockerToolbox-1.8.2c.exe)
