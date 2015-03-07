FROM ubuntu:12.04
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>

RUN apt-get update
RUN apt-get install -y apache2

EXPOSE 80

ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND
