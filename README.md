# LAMP

Let's deploy a LAMP stack inside docker containers:
- a container with php-apache
- a container with mysql
- a container with php-myadmin for administration purposes

The target is to plug this stack to external bind mounts to run multiple virtual hosts:
- www.dagobah-online.com
- heroes.dagobah-online.com
- euro2008, worldcup2010, euro2012

## Development environment - Windows

### Installation
- Update Windows 10 Home to version 2004
- Install Docker Desktop (requires Windows 10 Home v2004)
	* https://docs.docker.com/docker-for-windows/install-windows-home/
- Install Docker extension in VSCode

### Usage
...


## Development environment - Linux (Ubuntu 18.04)

### Installation
    $ sudo apt-get install docker docker-compose

Check docker service status

    $ sudo service docker status
    $ sudo service docker start


Check $USER belongs to `docker` group (otherwise sudo)

    $ groups ${USER}
    $ sudo usermod -aG docker ${USER}
    $ su - ${USER}

Reference:
- https://www.bountysource.com/issues/39603144-error-couldn-t-connect-to-docker-daemon-at-http-docker-localunixsocket-is-it-running


### Usage

Start/stop the LAMP stack

    $ docker-compose up -d
    $ docker-compose up -d --build
    $ docker ps
    $ docker-compose down

Explore the filesystem inside a docker image

    $ docker build /docker/php
    $ docker run -it ${IMAGE_NAME} sh

