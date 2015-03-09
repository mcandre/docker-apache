# docker-apache - a Docker container running a continuous Apache server

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-apache/

# EXAMPLE

```
$ docker pull mcandre/docker-apache

$ docker run -d -p 80:80 mcandre/docker-apache
$ curl http://$(boot2docker ip)
<html><body><h1>It works!</h1>
<p>This is the default web page for this server.</p>
<p>The web server software is running but no content has been added, yet.</p>
</body></html>
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```

# DEVELOPMENT

## Build

```
$ git clone https://github.com/mcandre/docker-apache.git
$ cd docker-apache/
$ docker build -t mcandre/docker-apache .

$ docker run -d -p 80:80 mcandre/docker-apache
```

### Linux

```
$ curl http://localhost
```

### non-Linux

```
$ curl http://$(boot2docker ip)
```

```
<html><body><h1>It works!</h1>
<p>This is the default web page for this server.</p>
<p>The web server software is running but no content has been added, yet.</p>
</body></html>
```

## Publish

```
$ docker push mcandre/docker-apache
```

## Cleanup

Sometimes you want to halt and delete Docker containers or images.

### Destroy all containers matching query

```
$ docker ps -a | grep docker-apache | awk '{ print $1 }' | xargs docker rm -f
```

### Destroy all images matching query

```
$ docker images | grep docker-apache | awk '{ print $3 }' | xargs docker rmi -f
```
